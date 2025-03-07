extends Node

var score = 0

@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "" #example, this could be use as your collected how many collectedables with an amount input counter connecting with the game manager
