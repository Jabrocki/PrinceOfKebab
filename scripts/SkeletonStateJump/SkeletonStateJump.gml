// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkeletonStateJump(){
	sprite_index = sSkeletonJump;
	//Horizontal speed calc
	var _distanceToGoX = abs(xTo-x);
	var _speedThisFrame = enemySpeed;
		
	if(_distanceToGoX < enemySpeed) _speedThisFrame = _distanceToGoX;
	if(xTo-x>0) hSpeed = _speedThisFrame; else hSpeed = -_speedThisFrame;
	// Checks how many pixels we have to jump
	jumpToGo = max(0, jumpToGo + jumpSpeed);
	// Checks if we jumped to high
	if(jumpToGo<abs(jumpSpeed)) vSpeed = jumpToGo; else vSpeed = jumpSpeed;
	//Animation change
	if(round(image_index) == sprite_get_number(sprite_index)-1)
	{
		image_speed = 0;
		image_index = 3;
	}
	if(jumpToGo <= 0)
	{
		image_speed = 1;
		state = ENEMYSTATE.FALL;
	}
}