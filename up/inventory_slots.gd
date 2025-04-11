extends PanelContainer
class_name Slot
@onready var texture_rect: TextureRect = $TextureRect
#@export var item : Item = null:
	#set(value):
		#item = value
		
		#if parent of slot is a charater node then equip item
		#but make sure play does not have any weapon from the start
		#if get_parent().name == "Charater":
			#get_parent().equip(item)
		
		#if value != null:
			#texture_rect.texture = value.icon
		#else:
			#texture_rect.texture = null
#			Replace item with item names---------------------

func get_preview():
#this is the preview fo the dragged item with textureRect
	var preview_texture = TextureRect.new()
	preview_texture.texture = texture_rect.texture
	preview_texture.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	preview_texture.custom_minimum_size - Vector2(20,20)
	
#	center it with control and return it
	var preview = Control.new()
	preview.add_child(preview_texture)
	preview_texture.position = -0.5 * Vector2(20,20)
	
	return preview


func _get_drag_data(at_position):
#	set drag preview in _get_drag_data and return self
	set_drag_preview(get_preview())
	return self

func _can_drop_data(_pos, data):
	#item will be droppable in other slots
	return data is Slot
	
#func _drop_data(_at_position, data):
#this  swaps items between them after dropping
#item missing, need to be replaced (renamed) to the corrsponding item name
	#var temp = item
	#item = data.item
	#item.data = temp
	
#follow up video https://www.youtube.com/watch?v=ANuCGdakZXs&list=WL&index=14&t=69s at invintory after they are done with items and player
