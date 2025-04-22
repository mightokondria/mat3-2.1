extends Area2D
class_name GoodEnding

@export var sprite : Sprite2D
@export var animation_player : AnimationPlayer
@export var collision : CollisionShape2D

var is_open = false

func _process(delta: float) -> void:
	animation_player.play("billy")
	sprite.visible = false
	
	if GameManager.energy_cells == 4:
		sprite.visible = true
		collision.disabled = false
	else:
		collision.disabled = true

func open():
	is_open = true
	#sprite.region_rect.position.x = 22
	
func close():
	is_open = false
	#sprite.region_rect.position.x = 0

func _on_body_entered(body):
	if body is PlayerController:
		#get_tree().change_scene_to_file("res://Assets/Scenes/Areas/good_end.tscn")
		GameManager.good_end()
		print("good end")
