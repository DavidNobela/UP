extends Control
@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var next_button: Button = %NextButton
var dialogue_items: Array[String] = [
	"Hey there",
	"Congrats! You survived and made it out",
	"Hopefully u didn't get too hurt",
]

var current_item_index := 0

func _ready() -> void:
	show_text()
	next_button.pressed.connect(advance)
func show_text() -> void:
	var current_item := dialogue_items[current_item_index]
	rich_text_label.text = current_item
	# We animate the text appearing letter by letter.
	rich_text_label.visible_ratio = 0.0
	var tween := create_tween()
	var text_appearing_duration := 1
	tween.tween_property(rich_text_label, "visible_ratio", 1.0, text_appearing_duration)




func advance() -> void:
	current_item_index += 1
	if current_item_index == dialogue_items.size():
		get_tree().quit()
	else:
		show_text()
