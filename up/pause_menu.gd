extends Control

func _ready():
	$AnimationPlayer.player("RESET")

func resume():
	get_tree().paused = false
	$AnimationPlayer.player_backward("blur")
	
func pause():
	get_tree().paused = true
	$AnimationPlayer.player("blur")
	
func testEsc():
	if Input.is_action_just_pressed("Pause") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("Pause") and get_tree().paused == true:
		resume()



func _on_resume_pressed() -> void:
	resume()


func _on_restart_pressed() -> void:
	get_tree().reload_current_screne()


func _on_quit_pressed() -> void:
	get_tree().quit()

func _procress(_delta):
	testEsc()
