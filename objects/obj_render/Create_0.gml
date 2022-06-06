/// @description build the map

//layer_set_visible("Map", false);

global.theMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("Map");

// create an array of all the tiles on the map
for (var tX = 0; tX < MAP_W; tX++) {
	
	for (var tY = 0; tY < MAP_H; tY++) {
		
		var tileMapData = tilemap_get(tileMap, tX, tY);
		
		// format: [Sprite, Z]
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		thisTile[TILE.Z] = irandom(1);
		global.theMap[# tX, tY] = thisTile
	}
}