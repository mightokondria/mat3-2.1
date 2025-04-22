extends Node2D

@onready var my_button = $Button  # Pastikan path sesuai dengan nama node tombol

func _ready():
	# Set tombol agar memiliki fokus
	my_button.grab_focus()

func _process(delta):
	# Periksa jika tombol joystick ditekan untuk memicu fungsi tombol
	if Input.is_action_just_pressed("select"):  # Pastikan "ui_select" sudah diatur di Input Map
		my_button.emit_signal("pressed")  # Simulasikan tekanan tombol

# Fungsi yang terhubung dengan signal "pressed" dari Button
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Areas/area_1.tscn")
	print("Button pressed! Scene changed to area_1.")
