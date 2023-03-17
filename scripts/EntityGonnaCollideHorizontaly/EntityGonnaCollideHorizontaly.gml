// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EntityCollideHorizontaly(){
	//check top and bottom of side
	//horizontal collision
    var _bbox_side;
    //determine which side to test
    //check top and bottom of side
	//determine which side to test
    if hSpeed > 0 _bbox_side = bbox_right else _bbox_side = bbox_left;
	var _playerHeight = bbox_bottom - bbox_top;
	var _playerHeightCardinal = round(_playerHeight/global.tileSize);
	
	for (i = 0; i<_playerHeightCardinal; i++)
	{
		var _test = tilemap_get_at_pixel(global.tileCollisionMap, _bbox_side + hSpeed, bbox_bottom - global.tileSize*i)
		if (_test == SOLID)
		{
		    if (hSpeed > 0) x = x - (x mod global.tileSize) + global.tileSize - 1 - (_bbox_side - x);
    		else x = x - (x mod global.tileSize) - (_bbox_side - x);
    		return true
		}
	}
	return false;
}