// W wersji v2.3.0 zmieniono zasoby skryptu. Więcej informacji można znaleźć pod adresem
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function SkeletonStateChase(){
	if(instance_exists(oPlayer))
	{
		xTo = oPlayer.x;
		yTo = oPlayer.y;
		var _distanceToGoX = abs(xTo-x);
		var _distanceToGoY = abs(yTo-y);
		var _speedThisFrame = enemySpeed;
		
		if(_distanceToGoX < enemySpeed) _speedThisFrame = _distanceToGoX;
		


		//Check if we should change animation 
		if(floor(_distanceToGoX)>2)
		{
			if(xTo-x>0) hSpeed = _speedThisFrame; else hSpeed = -_speedThisFrame;
			sprite_index = spriteWalk;
			onThePlayer = false;
		}
		else 
		{
			hSpeed = 0;
			sprite_index = spriteIdle;
			onThePlayer = true;
		}
		//Check if we should jump
		if(
			(_distanceToGoY > global.tileSize and _distanceToGoX<2*global.tileSize and y - yTo>0) or 
			EntityGonnaFall() or 
			(EntityCollideHorizontaly() and !onThePlayer)
			)
		{
			jumpToGo = jumpHeight;
			previousState = state;
			state = ENEMYSTATE.JUMP;
		}
		//Check if we should change state
		if(++aggroCheck >= aggroCheckDuration)
		{
			aggroCheck = 0;
			if (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAttackRadius)
			{
				//Choose attack type
				var _type = irandom_range(0,1);
				switch _type
				{
					case 0:
						spriteAttack = spriteAttack1;
						break;
					case 1:
						spriteAttack = spriteAttack2;
						break;
					default:
						spriteAttack = spriteAttack1;
				}
				
				image_index = 0;
				//Change state
				state = ENEMYSTATE.ATTACK;
				target = oPlayer;
			}
		}
	}
	if(!EntityOnGround())
	{
		previousState = state;
		state = ENEMYSTATE.FALL;
	}
	if(instance_exists(oPlayer))
	{
	if(point_distance(x,y,oPlayer.x,oPlayer.y) >= global.tileSize*12)
	{
		state = ENEMYSTATE.WANDER;
	}
	}
}