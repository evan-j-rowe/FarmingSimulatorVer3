global.CURRENT_TIME += delta()

if global.CURRENT_TIME > global.UPDATE_TICK {
	with (obj_tile) {
		Tile.Run()
	}
	
	global.CURRENT_TIME = 0
}