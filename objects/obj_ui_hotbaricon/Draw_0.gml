var it = CONTAINER[ITEM_INDEX]

if it  {
	var ref = struct_get(global.items,it.itemType)
	
	
	if global.DRAGGINGCONTAINER == CONTAINER &&  global.DRAGGINGID == ITEM_INDEX {
		itemX = lerp(itemX,mouse_x,0.3)
		itemY = lerp(itemY,mouse_y,0.3)
		itemAngle = 2*(itemX-mouse_x)
	} else {
		itemX = lerp(itemX,x,0.3)
		itemY = lerp(itemY,y,0.3)
		itemAngle = 2*(itemX-x)
	}
	
	
	
	
	image_index = ref.rarity
	
	drawIcon()

} else {
	image_index = 3
	draw_self()
}
