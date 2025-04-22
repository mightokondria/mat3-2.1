extends Node

@onready var button = $Button  # Ganti dengan path tombol yang sesuai

func _ready():
	# Menghubungkan sinyal tombol 'pressed' ke metode _on_button_pressed di skrip yang sama
	button.connect("pressed", self, "_on_button_pressed")

# Fungsi yang dijalankan saat tombol ditekan
func _on_button_pressed():
	# Kembali ke scene area_1 menggunakan metode yang benar di Godot 4.x
	get_tree().change_scene_to("res://Assets/Scenes/Areas/area_1.tscn")
	print("Kembali ke Area 1")
