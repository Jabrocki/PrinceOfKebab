// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkeletonStateFall(){
	sprite_index = spriteFall;
	// Animation change if player on the ground
	var _enemy_on_ground = EntityOnGround();
	
	if(_enemy_on_ground)
	{
		image_speed = 1;
		if (round(image_index) == sprite_get_number(sprite_index)-1)
		{
			state = previousState;
		}
	}
	else
	{
		image_index = 0;
		image_speed = 0;
	}
}