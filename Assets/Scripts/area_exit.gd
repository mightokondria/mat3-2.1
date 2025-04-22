extends Area2D
class_name AreaExit

@export var sprite : Sprite2D
@export var animation_player : AnimationPlayer

var is_open = false

func _process(delta: float) -> void:
	animation_player.play("portal")

func open():
	is_open = true
	#sprite.region_rect.position.x = 22
	
func close():
	is_open = false
	#sprite.region_rect.position.x = 0

func _on_body_entered(body):
	if is_open && body is PlayerController:
		GameManager.next_level()
		print(GameManager.current_area)
