///@desc Kolizje podpierdoliłem od ridica
function PlayerCollision(){
    //apply carried over decimals
    hSpeed += hSpeedDecimal;
    vSpeed += vSpeedDecimal;
     
    //floor decimals
    //save and subtract decimals
    hSpeedDecimal = frac(hSpeed);
	vSpeedDecimal = frac(vSpeed);

    hSpeed -= hSpeedDecimal;
    vSpeed -= vSpeedDecimal;
     
    //horizontal collision
    var _bbox_side;
    //determine which side to test
    if hSpeed > 0 _bbox_side = bbox_right else _bbox_side = bbox_left;
     
    //check top and bottom of side
    var t1 = tilemap_get_at_pixel(global.tileCollisionMap, _bbox_side + hSpeed, bbox_top);
    var t2 = tilemap_get_at_pixel(global.tileCollisionMap, _bbox_side + hSpeed, bbox_bottom);
    var t3 = tilemap_get_at_pixel(global.tileCollisionMap, _bbox_side + hSpeed, (bbox_bottom + bbox_top)/2);
     
	if	((t1 == SOLID) or (t2 == SOLID) or (t3 == SOLID)){
    	//collision found
    	if (hSpeed > 0) x = x - (x mod global.tileSize) + global.tileSize - 1 - (_bbox_side - x);
    	else x = x - (x mod global.tileSize) - (_bbox_side - x);
    	hSpeed = 0;	
    }
    x += hSpeed;
     
    //clamp the movement at the left and right sides of the screen
    if bbox_left <= 0 {
    	x = (x - bbox_left);
    	hSpeed = 0;
    } else if bbox_right >= room_width {
		// If x mod 2 = 1 we got an extra pixel
		if (x mod 2 = 0) x = room_width - (bbox_right - x) else  x = room_width - (bbox_right - x) - 1;
    	hSpeed = 0;
    }
     
    //vertical collision
    var _bbox_side;
    //determine which side to test
    if vSpeed > 0 _bbox_side = bbox_bottom else _bbox_side = bbox_top;
     
    //check left and right side
    var t1 = tilemap_get_at_pixel(global.tileCollisionMap, bbox_left, _bbox_side + vSpeed);
    var t2 = tilemap_get_at_pixel(global.tileCollisionMap, bbox_right, _bbox_side + vSpeed);
    var t3 = tilemap_get_at_pixel(global.tileCollisionMap, bbox_left, bbox_bottom);
    var t4 = tilemap_get_at_pixel(global.tileCollisionMap, bbox_right, bbox_bottom);
    var t5 = tilemap_get_at_pixel(global.tileCollisionMap, (bbox_left + bbox_right)/2, _bbox_side + vSpeed);
    var t6 = tilemap_get_at_pixel(global.tileCollisionMap, (bbox_left + bbox_right)/2, bbox_bottom);
     
    if	((((t1 != VOID) and (vSpeed > 0 or t1 != PLATFORM)) and (t3 != PLATFORM) or (t1 == SOLID and t3 == PLATFORM)) or
    	(((t2 != VOID) and (vSpeed > 0 or t2 != PLATFORM)) and (t4 != PLATFORM) or (t2 == SOLID and t4 == PLATFORM)) or
    	(((t5 != VOID) and (vSpeed > 0 or t5 != PLATFORM)) and (t6 != PLATFORM) or (t5 == SOLID and t6 == PLATFORM))) and
    	(t1 != UD and t2 != UD and t3 != UD and t4 != UD and t5 != UD and t6 != UD) {
    	//collision found
    	if (vSpeed > 0) {
    		y = (_bbox_side div global.tileSize) * global.tileSize + global.tileSize - 1 - (_bbox_side - y);
    	} else {
    		y = (_bbox_side div global.tileSize) * global.tileSize + (y - _bbox_side);
    	}
    	vSpeed = 0;
    } else {
    	//no collision, so check if we are moving down to a platform while we are already on a platform
    	if ((t1 == PLATFORM and t3 == PLATFORM) or (t2 == PLATFORM and t4 == PLATFORM) or (t5 == PLATFORM and t6 == PLATFORM))
    	and vSpeed > 0 {
    		
    		//if these do no match, we are moving down to a new tile
    		if t1 != t3 or t2 != t4 or t5 != t6 {
    			//collision found, move to the top of the platform tile
    			if (vSpeed > 0) {
    				y = (_bbox_side div global.tileSize) * global.tileSize + global.tileSize - 1 - (_bbox_side - y);				
    			} else {
    				y = (_bbox_side div global.tileSize) * global.tileSize + (y - _bbox_side);				
    			}
    			vSpeed = 0;
    		}
    	}
    }
    y += vSpeed;
}