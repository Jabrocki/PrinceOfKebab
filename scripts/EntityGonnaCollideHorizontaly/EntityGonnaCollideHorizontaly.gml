// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EntityCollideHorizontaly(){
	//check top and bottom of side
	//horizontal collision
    var _bbox_side;
    //determine which side to test
    if hSpeed > 0 _bbox_side = bbox_right else _bbox_side = bbox_left;
    var t1 = tilemap_get_at_pixel(global.tileCollisionMap, _bbox_side + hSpeed, bbox_top);
    var t2 = tilemap_get_at_pixel(global.tileCollisionMap, _bbox_side + hSpeed, bbox_bottom);
    var t3 = tilemap_get_at_pixel(global.tileCollisionMap, _bbox_side + hSpeed, (bbox_bottom + bbox_top)/2);
     
    if	(((t1 != VOID) and (t1 != PLATFORM)) or
    	((t2 != VOID) and (t2 != PLATFORM)) or
    	((t3 != VOID) and (t3 != PLATFORM))) and 
    	(t1 != UD and t2 != UD and t3 != UD) {
    	//collision found
    	if (hSpeed > 0) x = x - (x mod global.tileSize) + global.tileSize - 1 - (_bbox_side - x);
    	else x = x - (x mod global.tileSize) - (_bbox_side - x);
    	return true;
    }
	return false;
}