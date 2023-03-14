// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkeletonStateAttack(){
	sprite_index = spriteAttack;
	hSpeed = 0;
	if(round(image_index) == sprite_get_number(sprite_index))
	{
		state = ENEMYSTATE.CHASE;
	}
	if(!EntityOnGround())
	{
		previousState = state;
		state = ENEMYSTATE.FALL;
	}
}