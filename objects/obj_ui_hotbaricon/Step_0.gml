if HOTBAR && ITEM_INDEX == global.SAVE_FILE.HotbarSelected {
	y = lerp(y,startingY-3,0.3)
	hover = lerp(hover,1.2,0.26)
} else if (
	mouse_x > bbox_left &&
	mouse_x < bbox_right &&
	mouse_y > bbox_top &&
	mouse_y < bbox_bottom ) {
	y = lerp(y,startingY-1,0.4)
	hover = lerp(hover,1.2,0.26)
} else {
	y = lerp(y,startingY,0.15)
	hover = lerp(hover,1,0.26)
}

if HOTBAR && global.SAVE_FILE.HotbarSelected == ITEM_INDEX && CONTAINER[global.SAVE_FILE.HotbarSelected] {
	var item =  CONTAINER[global.SAVE_FILE.HotbarSelected]
	
	if  item.useFrame == 1 {
		item.useFrame = 0
		
		if item.count <= 0 {
			 CONTAINER[global.SAVE_FILE.HotbarSelected] = noone
		} else {
			hover = 1.5
		}
	}
}

//item.useFrame = 1