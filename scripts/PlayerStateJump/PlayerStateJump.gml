///@desc State for players jump
function PlayerStateJump(){
	sprite_index = sPlayerJump;
<<<<<<< HEAD
	// Checks how many pixels we have to jump
	jumpToGo = max(0, jumpToGo + jumpSpeed);
	// Checks if we jumped to high
	if(jumpToGo<abs(jumpSpeed)) vSpeed = jumpToGo; else vSpeed = jumpSpeed;
=======
>>>>>>> parent of 9ad5155 (Podstawowy Atak)
	//Animation change
	if(round(image_index) == sprite_get_number(sprite_index)-1)
	{
		image_speed = 0;
		image_index = 3;
<<<<<<< HEAD

=======
		// Checks how many pixels we have to jump
		jumpToGo = max(0, jumpToGo + jumpSpeed);
		// Checks if we jumped to high
		if(jumpToGo<abs(jumpSpeed)) vSpeed = jumpToGo; else vSpeed = jumpSpeed;
		
		
>>>>>>> parent of 9ad5155 (Podstawowy Atak)
		if(jumpToGo <= 0)
		{
			image_speed = 1;
			playerState = PlayerStateFall;
		}
	}
	

	PlayerCalcMovement();
	PlayerCollision();
}