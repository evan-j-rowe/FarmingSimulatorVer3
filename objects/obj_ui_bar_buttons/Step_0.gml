if (global.SAVE_FILE.SideSelected = image_index) {
	x = lerp(x,start_x+2,0.3)
} else if (
	mouse_x > bbox_left &&
	mouse_x < bbox_right &&
	mouse_y > bbox_top &&
	mouse_y < bbox_bottom ) {
	x = lerp(x,start_x+1,0.3)
} else {
	x = lerp(x,start_x,0.3)
}