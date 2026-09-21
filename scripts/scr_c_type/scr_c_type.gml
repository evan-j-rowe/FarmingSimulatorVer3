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

}

global.crops.wheat = variable_clone(global.templateCrop)

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

count = 0

array_foreach(global.cropsOrder,function(cropv,index) {
		count += 1
	
		global.cropMul7835t = log10(count + 1)*3 + (count+1)/5 + 1
	
		array_foreach(cropv.stages,function(stge,stgeind) {
				stge[1] *= global.cropMul7835t * 5
			}
		)
	
		cropv.buyCost *= power(count+1,3)
		cropv.sellCost = cropv.buyCost * 1.5
	}
)