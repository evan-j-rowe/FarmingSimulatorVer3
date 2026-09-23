var it = global.SAVE_FILE.Hotbar[ITEM_INDEX]

if it {
	var ref = struct_get(global.items,it.itemType)
	
	image_index = ref.rarity
	
	draw_self()
	
	draw_sprite_ext(ref.sprite,0,x,y,hover,hover,0,c_white,1)
} else {
	image_index = 3
	draw_self()
}
