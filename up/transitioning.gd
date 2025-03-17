extends CanvasLayer

signal transitioned

func _ready():
	transition()

func transition():
	$AnimationPlayer.play("fade to black")

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade_to_black":
		print("Emit signal transitioned")
		emit_signal("transitioned")
		$AnimationPlayer.play("fade to normal")
	if anim_name == "fade to normal":
		print("Fished fading")
