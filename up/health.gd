extends Area2D


func _ready() -> void:
	area_entered.connect(_on_area_entered)

func _on_area_entered(area_that_entered: Area2D) -> void:
	queue_free()


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
