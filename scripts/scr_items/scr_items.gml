enum ITEM_RARITY {
	BUILDING = 0,
	SEED = 1,
	OTHER = 2,
}

enum ITEM_TYPE {
	NOTHING,
	SEED,
	BUILDING,
	WATER,
}

global.templateItem = {
	name : "Item",
	description : "",
	rarity : ITEM_RARITY.OTHER,
	type : ITEM_TYPE.NOTHING,
	typeVariable : 1,
	sprite : spr_inv_wheat,
	
	stackable : false
}

global.items = {}

global.items.Placeholder = variable_clone(global.templateItem)

global.templateInventoryAsset = {
	itemType : "",
	count : 1,
	variable1 : 0,
}

function createNewItem(type,quantity = 1) {
	var it = variable_clone(global.templateInventoryAsset)
	it.itemType = type
	it.count = quantity
	
	return it
}

array_foreach(global.cropsOrder,function(cropv,index) {
		count += 1
	
		global.cropMul7835t = log10(count + 1)*3 + (count+1)/5 + 1
	
		array_foreach(cropv.stages,function(stge,stgeind) {
				stge[1] *= global.cropMul7835t * 5
			}
		)
	
		cropv.buyCost *= power(count+1,3)
		cropv.sellCost = cropv.buyCost * 1.5
		
		//WHEAT SEED
		var seed = variable_clone(global.templateItem)
		seed.name = string_concat(cropv.name + " Seeds")
		seed.rarity = ITEM_RARITY.SEED
		seed.type = ITEM_TYPE.SEED
		seed.variable = cropv
		seed.sprite = cropv.seedSprite
		
		struct_set(global.items,string_concat(cropv.name+"Seeds"),seed)
	}
)