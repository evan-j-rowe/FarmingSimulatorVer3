if mouse_check_button(mb_left) {
	if global.SAVE_FILE.HotbarSelected > -1 && global.SAVE_FILE.Hotbar[global.SAVE_FILE.HotbarSelected] {
		Tile.UseItem(global.SAVE_FILE.Hotbar[global.SAVE_FILE.HotbarSelected])
	}
}