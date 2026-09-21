global.SAVE_FILE = {}

function createSaveFile() {
	global.SAVE_FILE = {}
	global.SAVE_FILE.Tiles = []
	
	sftCount = 0
	repeat (56) {
		sftCount += 1
		
		var tileX = (sftCount%8)*20 + 10 + 60
		var tileY = floor(sftCount/8)*20 + 10
		
		tilled = (tileX >100 && tileX<180 && tileY>40 && tileY<100)
		
		global.SAVE_FILE.Tiles[sftCount] = new tile(
			tileX,
			tileY,
			tilled
		) 
	}
}

createSaveFile()