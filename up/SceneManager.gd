extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

#const Screne = preload("")
#this is goiong to be a transition to another scene, need to be updated
#issue with this line is that its only able to play the transition animation to the assigned transitioned scene
#to solve: make this apply to every single transition no matter that level or situation.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		$Transitioning.transition()
		
func _on_Transitioning_transitioned():
	pass
	#$CurrentScene.get.child(0).queue_free()
	#$CurrentScene.get.child(Scene.instance())
	#print("swapped scene to?")
