// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFall(){
	sprite_index = sPlayerFall;
	//Animation change
	var _player_on_ground = PlayerOnGround();
	if(_player_on_ground)
	{
		image_speed=1;
		if (round(image_index) == sprite_get_number(sprite_index)-1)
		{
			playerState=PlayerStateFree;
		}
	}
	else
	{
		image_index = 0;
		image_speed = 0;
	}
	PlayerCalcMovement();
	PlayerCollision();
}