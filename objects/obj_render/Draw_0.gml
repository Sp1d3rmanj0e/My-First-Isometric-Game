/// @description render game

var tileData, screenX, screenY, tileIndex, tileZ;

var tileMap = layer_tilemap_get_id("Map");

for (var tX = 0; tX < MAP_W; tX++) {
	
	for (var tY = 0; tY < MAP_H; tY++) {
		
		tileData = global.theMap[# tX, tY];
		screenX = tileToScreenX(tX, tY);
		screenY = tileToScreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		// mouse hover on tile
		if (screenToTileX(mouse_x,mouse_y) == tX) and (screenToTileY(mouse_x,mouse_y) == tY) {
			
			tileIndex = 2;
			tileZ += 2;
			
			if (mouse_check_button_pressed(mb_left)) {
				
				tilemap_set(tileMap,tileIndex,tX, tY);
				
				// format: [Sprite, Z]
				var thisTile = [-1, 0];
				thisTile[TILE.SPRITE] = tileIndex;
				thisTile[TILE.Z] = irandom(1);
				global.theMap[# tX, tY] = thisTile;
			}
		}
		
		if (tileIndex != 0) draw_sprite(spr_tileStatic, tileIndex-1, screenX, screenY - tileZ);
	}
}