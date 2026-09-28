horizontalVelocity = lerp(horizontalVelocity,0,0.23)
verticleVelocity += 290*delta()

height += verticleVelocity * delta()

x += lengthdir_x(horizontalVelocity*delta(),horizontalAngle)
y += lengthdir_y(horizontalVelocity*delta(),horizontalAngle)
image_angle -= lengthdir_x(horizontalVelocity*delta(),horizontalAngle)

if height > 0 {
	horizontalVelocity = 0
	height = 0
	heightTimer -= delta()
	
	if heightTimer < 0 {
		instance_destroy()
	}
}
