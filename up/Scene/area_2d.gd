extends Area2D

var health := 10
func _ready() -> void:
	area_entered.connect(_on_area_entered)
	set_health(health)

func set_health(new_health: int) -> void:
	health = new_health
	get_node("UI/HealthBar").value = health


func _on_area_entered(area_that_entered: Area2D) -> void:
	set_health(health + 10)
