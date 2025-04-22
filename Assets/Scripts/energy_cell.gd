extends Area2D
@export var animation_player : AnimationPlayer

func ready() -> void:
	animation_player.play("orbs")

func _on_body_entered(body):
	if body is PlayerController:
		GameManager.add_energy_cell()
		queue_free() #Remove coin
