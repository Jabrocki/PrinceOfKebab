// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	image_speed = 1;
	//Move variable
	var _move = keyRight - keyLeft; //if left = -1, if right = 1, if both = 0, that means player doesn't moves

	//Sprite change
	if( _move != 0 ) 
	{
		image_xscale = _move;
		sprite_index = sPlayerRun;
	}
	else sprite_index =sPlayerIdle;

	//Check if on the ground
	var _on_the_ground = PlayerOnGround();
	
	//Jump
	if(_on_the_ground and keyUp)
	{
		jumpToGo = jumpHeight;
		playerState = PlayerStateJump;
	}
	if(!_on_the_ground)
	{
		playerState = PlayerStateFall;
	}
	
	//Attack
	if (_on_the_ground) && (keyAttack)
	{
		playerState = PlayerStateAttack;
	}
	
	//Player collision check + Player calculate movement
	PlayerCalcMovement();
	PlayerCollision();
}