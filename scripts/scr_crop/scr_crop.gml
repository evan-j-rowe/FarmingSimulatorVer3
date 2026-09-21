

function crop(type) constructor {
	cropType = type
	sizeMaximum = random_range(0.8,1.2)
	sizeCurrent = min(1,sizeMaximum)
	
	
	stage = 0
	stageTimer = 0
	variants = []
	
}

function tile(xP,yP,tiled = false) constructor {
	Tiled = tiled
	X = xP
	Y = yP
	WaterTimer = 0
	
	Crop = noone
	InteractionNumber = irandom_range(0,999)
	
	Render1 = function() {
		draw_sprite(spr_dirt_dry,0,self.X,self.Y)
	}
	
	Render2 = function() {
		if self.WaterTimer > 0 {
			draw_sprite(spr_dirt_wet,0,self.X,self.Y)
		}
	}
	
	Render3 = function() {
		if self.Tiled {
			if self.WaterTimer > 0 {
				draw_sprite(spr_dirt_tilling_wet,0,self.X,self.Y)
			} else {
				draw_sprite(spr_dirt_tilling,0,self.X,self.Y)
			}
		}
	}
	
	Render4 = function() {
		if self.Crop {
			var ref = struct_get(global.crops,self.Crop.cropType)
			
			draw_sprite_ext(
			ref.stages[self.Crop.stage][0],
			0,
			X,
			Y,
			self.Crop.sizeCurrent*(((self.InteractionNumber%2)*2)-1),
			self.Crop.sizeCurrent,
			0,
			c_white,
			1)
		}
	}
	
	Run = function() {
		if self.Crop {
			var ref = struct_get(global.crops,self.Crop.cropType)
			
			if self.Crop.stage != ref.stageCount-1 {
				self.Crop.stageTimer += global.UPDATE_TICK
				
				if self.Crop.stageTimer > ref.stages[self.Crop.stage][1] {
					self.Crop.stage += 1
					self.Crop.stageTimer = 0
				}
			}
		}
	}
}