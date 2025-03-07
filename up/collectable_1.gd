extends Area2D
#this will be the game manager where scores or numbers are kept counted of

@onready var game_manager = $GameManager



#this will the the animation for later on use

#animated sprite2D may replace Sprite2D since there will be mitipule frames to play
#@onready var animation_player = 


#later collectable output when player interact
func _on_ready_entered(_body):
	game_manager.add_point()
#animation.player.play( name of animation )
#https://www.freepik.com/vectors/pixel-banana
