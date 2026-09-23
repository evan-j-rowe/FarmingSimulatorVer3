var it = true

if ITEM_INDEX == global.SAVE_FILE.HotbarSelected && it {
	y = lerp(y,startingY-3,0.3)
} else if (
	mouse_x > bbox_left &&
	mouse_x < bbox_right &&
	mouse_y > bbox_top &&
	mouse_y < bbox_bottom ) && it {
	y = lerp(y,startingY-1,0.4)
	hover = lerp(hover,1.2,0.26)
} else {
	y = lerp(y,startingY,0.15)
	hover = lerp(hover,1,0.26)
}
