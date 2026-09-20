depth = (-bbox_bottom)+ 500

Tile = new tile(x,y,til)
if til && random_range(0,1) > 0.5 {
	Tile.Crop = new crop("wheat")
	Tile.Crop.stage = irandom_range(0,4)
} else if til {
	Tile.Crop = new crop("carrot")
	Tile.Crop.stage = irandom_range(0,4)
}