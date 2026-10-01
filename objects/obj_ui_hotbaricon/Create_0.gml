startingY = y

image_speed = 0
hover = 1

image_angle = irandom_range(0,1)*180

CONTAINER = global.SAVE_FILE.Hotbar

if CONT_TYPE == "inventory" {
	CONTAINER = global.SAVE_FILE.Inventory
}

holdDuration = 0
itemX = x
itemY = y
itemAngle = 0

function drawIcon() {
	var it = CONTAINER[ITEM_INDEX]
	var ref = struct_get(global.items,it.itemType)
	draw_self()
	
	draw_sprite_ext(ref.sprite,0,itemX,itemY,hover,hover,itemAngle,c_white,1)
}