var dp = depth

global.CURRENT_TIME += delta()



if global.CURRENT_TIME > global.UPDATE_TICK {
	with (obj_tile) {
		Tile.Run()
	}
	
	global.CURRENT_TIME = 0
}

global.HIGHLIGHTED_TILE = 0

depth = -5000
if global.DRAGGINGRIGHTNOW {
	
	if !mouse_check_button(mb_left) {
		var attemptedDrop = instance_position(mouse_x,mouse_y,obj_ui_hotbaricon)
		
		if attemptedDrop {
			var tempItem = attemptedDrop.CONTAINER[attemptedDrop.ITEM_INDEX]
		
			attemptedDrop.CONTAINER[attemptedDrop.ITEM_INDEX] = global.DRAGGINGCONTAINER[global.DRAGGINGID]
			
		
			global.DRAGGINGCONTAINER[global.DRAGGINGID] = tempItem
			
			
		}
		
		
			global.DRAGGINGRIGHTNOW = false
			global.DRAGGINGID = noone
			global.DRAGGINGCONTAINER = noone
	}
}
depth = dp