if global.SAVE_FILE.HotbarSelected > -1 && global.SAVE_FILE.Hotbar[global.SAVE_FILE.HotbarSelected] && !global.DRAGGINGRIGHTNOW {
	Tile.UseItem(global.SAVE_FILE.Hotbar[global.SAVE_FILE.HotbarSelected])
}