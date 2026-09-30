startingY = y

image_speed = 0
hover = 1

image_angle = irandom_range(0,1)*180

CONTAINER = global.SAVE_FILE.Hotbar

if CONT_TYPE == "inventory" {
	CONTAINER = global.SAVE_FILE.Inventory
}