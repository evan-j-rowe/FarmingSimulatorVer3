global.SAVE_FILE = {}

function createSaveFile() {
	var SAVE_FILE = {}
	SAVE_FILE.Tiles = []
	
	sftCount = -1
	repeat (56) {
		sftCount += 1
		
		var tileX = (sftCount%8)*20 + 10 + 60
		var tileY = floor(sftCount/8)*20 + 10
		
		tilled = (tileX >100 && tileX<180 && tileY>40 && tileY<100)
		
		SAVE_FILE.Tiles[sftCount] = new tile(
			tileX,
			tileY,
			tilled
		) 
	}
	
	SAVE_FILE.Inventory = []
	SAVE_FILE.Hotbar = [createNewItem("Placeholder"),createNewItem("WheatSeeds"),0,0,0,0,0,0]
	SAVE_FILE.HotbarSelected = -1
	SAVE_FILE.Money = 0
	SAVE_FILE.SideSelected = 0
	
	//SHOP
	SAVE_FILE.UnlockedSeeds = 0
	
	return SAVE_FILE
}

global.SAVE_FILE = createSaveFile()