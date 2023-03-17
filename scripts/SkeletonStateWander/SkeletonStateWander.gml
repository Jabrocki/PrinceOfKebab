// W wersji v2.3.0 zmieniono zasoby skryptu. Więcej informacji można znaleźć pod adresem
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function SkeletonStateWander(){
	
	//At destination or given up?
	if (x == xTo or timePassed++ > enemyWanderDistance / enemySpeed)
	{
		hSpeed = 0;
		sprite_index = spriteIdle;
		//Set new target destination
		if (++wait >= waitDuration)
		{
			wait = 0;
			timePassed = 0;
			turn = !turn;
			if(turn) xTo = xstart - enemyWanderDistance;
			else xTo = xstart + enemyWanderDistance;
		}
	}
	else //Move towards new destination
	{
		sprite_index = spriteWalk;

		var _distanceToGo = abs(xTo-x);
		var _speedThisFrame = enemySpeed;
		
		if(_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo;
		
		if(xTo-x>0) hSpeed = _speedThisFrame; else hSpeed = -_speedThisFrame;
		
		while(EntityGonnaFall())
		{
			if(hSpeed >= 0) hSpeed = hSpeed-1 else hSpeed = hSpeed+1;
		}
	}
	// Check for aggro

	if(++aggroCheck >= aggroCheckDuration)
	{
		aggroCheck = 0;
		if(instance_exists(oPlayer))
		{
			if (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAggroRadius)
			{
				//Change state
				state = ENEMYSTATE.CHASE;
				target = oPlayer;
			}
		}
	}	
	if(!EntityOnGround())
	{
		previousState = state;
		state = ENEMYSTATE.FALL;
	}
}