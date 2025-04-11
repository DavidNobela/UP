extends GridContainer

@onready var slots = get_children()

#func _ready():
#need to plug in items-----------------------------------------------------
	#add_item(load("res"))

#func add_item(item : Item):
#function to add item to the inventory
#item needs to be declear and plugged in---------------------------------------------
	#for slot in slots:
		#if slot.item == null:
			#slot.item = item
			#return
	#print("Can't add any more item...")
	#
#func remove_item(item : Item):
#function to remove items from inventory
	#for slot in slots:
		#if slot.item == item:
			#slot.item = null
			#return
		#print("Item not found...")
