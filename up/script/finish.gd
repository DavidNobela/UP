extends Area2D

@export var targer_level : PackedScene

func _on_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_packed(targer_level)
