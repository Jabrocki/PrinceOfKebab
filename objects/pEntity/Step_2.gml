/// @desc Entity loop
if(!global.gamePaused)
{
	if(lifted and instance_exists(oPlayer))
	{
		/*
		if(oPlayer.sprite_index != sPlayerLift)
		{
			x = oPlayer.x; // change numbers if you think they are wrong
			y = oPlayer.y + 48; // not implemented already
			depth = oPlayer.depth-1;
		}
		*/
		// Implementation from my previous game I'm not sure that we want to implement that
	}
	if(!lifted)
	{
		//Be thrown
		if (thrown)
		{
			//TODO
		}
		else
		{
			if(EntityOnGround())
			{
				EntityCalcMovement();
				EntityCollision();
			}
		}
	}
}