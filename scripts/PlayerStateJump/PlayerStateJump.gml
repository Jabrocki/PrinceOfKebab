///@desc State for players jump
function PlayerStateJump(){
	sprite_index = sPlayerJump;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> parent of 85dfe7f (test)
	// Checks how many pixels we have to jump
	jumpToGo = max(0, jumpToGo + jumpSpeed);
	// Checks if we jumped to high
	if(jumpToGo<abs(jumpSpeed)) vSpeed = jumpToGo; else vSpeed = jumpSpeed;
<<<<<<< HEAD
=======
>>>>>>> parent of 9ad5155 (Podstawowy Atak)
=======
>>>>>>> parent of 9ad5155 (Podstawowy Atak)
=======
>>>>>>> parent of 85dfe7f (test)
	//Animation change
	if(round(image_index) == sprite_get_number(sprite_index)-1)
	{
		image_speed = 0;
		image_index = 3;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

=======
=======
>>>>>>> parent of 9ad5155 (Podstawowy Atak)
		// Checks how many pixels we have to jump
		jumpToGo = max(0, jumpToGo + jumpSpeed);
		// Checks if we jumped to high
		if(jumpToGo<abs(jumpSpeed)) vSpeed = jumpToGo; else vSpeed = jumpSpeed;
		
		
<<<<<<< HEAD
>>>>>>> parent of 9ad5155 (Podstawowy Atak)
=======
>>>>>>> parent of 9ad5155 (Podstawowy Atak)
=======

>>>>>>> parent of 85dfe7f (test)
		if(jumpToGo <= 0)
		{
			image_speed = 1;
			playerState = PlayerStateFall;
		}
	}
	

	PlayerCalcMovement();
	PlayerCollision();
}