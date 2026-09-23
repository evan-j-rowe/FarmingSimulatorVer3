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