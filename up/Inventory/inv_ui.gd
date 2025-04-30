extends Control


var is_open = false

@onready var inv: Inv = preload("res://Inventory/playerInventory.tres")
@onready

func _ready():
	close()
	
func _process(delta):
	if Input.is_action_just_pressed("e"):
		if is_open:
			close()
		else:
			open()
	
func open():
	visible = true
	is_open = true
	
func close():
	visible = false
	is_open = false
	
