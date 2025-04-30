extends Panel


@onready var item_visual: Sprite2D = $item_display

func update(item: InvItem):
	if !item:
		item_visual.visable = false
	else:
		item_visual.visable = true
		item_visual.texture = item.texture
