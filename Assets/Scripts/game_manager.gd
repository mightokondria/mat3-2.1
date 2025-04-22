extends Node

var current_area = 1
var area_path = "res://Assets/Scenes/Areas/"

var energy_cells = 0

func _ready():
	reset_energy_cells()


func next_level():
	# Cek jika current_area adalah 4
	if current_area == 3:
		# Pindah ke bad_ending.tscn
		get_tree().change_scene_to_file("res://Assets/Scenes/Areas/bad_ending.tscn")
		print("The player has reached the bad ending!")
		
		# Reset current_area menjadi 1
		current_area = 1
		
		# Menghentikan eksekusi lebih lanjut
		return
	
	# Jika tidak, lanjutkan ke area berikutnya
	current_area += 1
	
	 # Jika current_area mencapai 5, reset ke 1
	#if current_area == 5:
		#current_area = 1
	
	# Menentukan path scene untuk area berikutnya
	var full_path = area_path + "area_" + str(current_area) + ".tscn"
	get_tree().change_scene_to_file(full_path)
	print("The player has moved to area " + str(current_area))
	
	set_up_area()
	
func good_end():
	get_tree().change_scene_to_file("res://Assets/Scenes/Areas/good_end.tscn")
	print("The player has moved to good end area ")
	current_area = 1

func set_up_area():
	reset_energy_cells()

func add_energy_cell():
	energy_cells += 1
	if energy_cells >= 4:
		var portal = get_tree().get_first_node_in_group("area_exits") as AreaExit
		portal.open()
		#GoodEnding.sprite.visible = true
		

func reset_energy_cells():
	energy_cells = 0
