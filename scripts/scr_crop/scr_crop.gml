global.templateCrop = {
	name : "Wheat",
	buyCost : 10,
	sellCost : 15,
	cropIndex : false,
	cropBaseSize : 1.2,
	
	stages : [
		[spr_crop_wheat_1,0.8],
		[spr_crop_wheat_2,1],
		[spr_crop_wheat_3,1],
		[spr_crop_wheat_4,1.2],
		[spr_crop_wheat_5,1]
	],
	stageCount : 5,
	
}

global.crops = {
	wheat : variable_clone(global.templateCrop),
}

global.crops.carrot = variable_clone(global.templateCrop)
global.crops.carrot.name = "Carrot"
global.crops.carrot.stages = [
		[spr_crop_carrot_1,0.8],
		[spr_crop_carrot_2,1],
		[spr_crop_carrot_3,1],
		[spr_crop_carrot_4,1.2],
		[spr_crop_carrot_5,1]
	]
global.crops.carrot.stageCount = 5


global.cropsOrder = [
	global.crops.wheat,
	global.crops.carrot
]

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
}