// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EntityOnGround(){
    /// on_ground()
    /// returns true if on ground
     
    var _bbox_side = bbox_bottom;
    var t1 = tilemap_get_at_pixel(global.tileCollisionMap, bbox_left, _bbox_side + 1);
    var t2 = tilemap_get_at_pixel(global.tileCollisionMap, bbox_right, _bbox_side + 1);
    var t3 = tilemap_get_at_pixel(global.tileCollisionMap, bbox_left, _bbox_side);
    var t4 = tilemap_get_at_pixel(global.tileCollisionMap, bbox_right, _bbox_side);
    var t5 = tilemap_get_at_pixel(global.tileCollisionMap, (bbox_right + bbox_left)/2, _bbox_side + 1);
    var t6 = tilemap_get_at_pixel(global.tileCollisionMap, (bbox_right + bbox_left)/2,_bbox_side);
     
     
    if	((t1 == SOLID or t1 == PLATFORM) and (t3 != SOLID and t3 != PLATFORM) or (t1 == SOLID and t3 == PLATFORM) or
    	(t2 == SOLID or t2 == PLATFORM) and (t4 != SOLID and t4 != PLATFORM) or (t2 == SOLID and t4 == PLATFORM) or
    	(t5 == SOLID or t5 == PLATFORM) and (t6 != SOLID and t6 != PLATFORM) or (t5 == SOLID and t6 == PLATFORM))
    	return true else {
    		//no collision, so check if we are moving down to a platform while we are already on a platform
    	if ((t1 == PLATFORM and t3 == PLATFORM) or (t2 == PLATFORM and t4 == PLATFORM) or (t5 == PLATFORM and t6 == PLATFORM))
    	and vSpeed>0 {		
    			//if these do no match, we are moving down to a new tile
    			if t1 != t3 or t2 != t4 or t5 != t6 {
    				//collision found
    				return true;
    			}
    		}
    	} 
    //no collision
    return false;
}