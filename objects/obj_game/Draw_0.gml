with obj_tile {
	Tile.Render1()
}

with obj_tile {
	Tile.Render2()
}

with obj_tile {
	Tile.Render3()
}

if (global.HIGHLIGHTED_TILE) {
	if (global.SAVE_FILE.HotbarSelected > -1 &&
	global.SAVE_FILE.Hotbar[global.SAVE_FILE.HotbarSelected]) {
		draw_sprite(spr_tile_selection_item,current_time/500,global.HIGHLIGHTED_TILE.X,global.HIGHLIGHTED_TILE.Y)
	} else {
		draw_sprite(spr_tile_selection,current_time/500,global.HIGHLIGHTED_TILE.X,global.HIGHLIGHTED_TILE.Y)
	}
}

with obj_tile {
	Tile.Render4()
}