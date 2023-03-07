///@desc Player State for fallling
function PlayerStateFall(){
	sprite_index = sPlayerFall;
	// Animation change if player on the ground
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