extends Control
@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var next_button: Button = %NextButton
var dialogue_items: Array[String] = [
	"Hey, look at you! Congrats on finishing the game!",
	"We're glad you survived and made it out of the jungle.",
	"Now let me introduce you to the people who made this game possible.",
	"Developers: 
	David (coder)
	Denys (artist)
	Jhonatan (artist)
	Jackson (coder)",
	"We hope you enjoyed our game and we'll see you again!"
]

var current_item_index := 0

func _ready() -> void:
	show_text()
	next_button.pressed.connect(advance)
func show_text() -> void:
	var current_item := dialogue_items[current_item_index]
	rich_text_label.text = current_item
	rich_text_label.visible_ratio = 0.0
	var tween := create_tween()
	var text_appearing_duration := 2
	tween.tween_property(rich_text_label, "visible_ratio", 1.0, text_appearing_duration)




func advance() -> void:
	current_item_index += 1
	if current_item_index == dialogue_items.size():
		get_tree().quit()
	else:
		show_text()
