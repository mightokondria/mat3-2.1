extends Control

@onready var video_player = $VideoStreamPlayer
@onready var button = $Button



func _ready():
	button.grab_focus()
	# Mulai memutar video
	video_player.play()
	button.visible = false  # Sembunyikan tombol saat video diputar
	
	# Hubungkan sinyal selesai dari VideoStreamPlayer
	video_player.finished.connect(_on_video_finished)
	
func _process(delta):
	# Periksa jika tombol joystick ditekan untuk memicu fungsi tombol
	if Input.is_action_just_pressed("select"):  # Pastikan "select" sudah diatur di Input Map
		button.emit_signal("pressed") 

func _on_video_finished():
	# Video selesai, tampilkan tombol
	button.visible = true

func _on_button_pressed():
	# Pindah ke scene area 1
	print("kembali ke area 1")
	get_tree().change_scene_to_file("res://Assets/Scenes/Areas/area_1.tscn")


func _on_video_stream_player_finished() -> void:
	pass # Replace with function body.
