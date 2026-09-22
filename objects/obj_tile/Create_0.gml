depth = (-bbox_bottom)+ 500

Tile = new tile(x,y,til)

array_foreach(global.SAVE_FILE.Tiles,function(v,i) {
	if (v.X == x && v.Y == y) {
		Tile = v
	}
})