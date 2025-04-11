extends GridContainer

func equip(item):
	#function to assign item to player
	get_tree().current_scene.find_child("Player").current_item = item
	
