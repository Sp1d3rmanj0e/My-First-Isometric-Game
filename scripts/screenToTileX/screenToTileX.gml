function screenToTileX(_rx,_ry) {
	
	// reverse the offset added before
	var _screenX =  _rx - (SCREEN_W * 0.5);
	var _screenY = _ry - (SCREEN_H *0.25);
	
	return floor((_screenX / (TILE_W * 0.5) + _screenY / (TILE_H * 0.5)) * 0.5); 
}