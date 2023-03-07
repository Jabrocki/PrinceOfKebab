// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCalcMovement(){
	hSpeed += (keyRight - keyLeft) * runSpeed;
	vSpeed += global.grav;
	
	if(hSpeed != 0) image_xscale = sign(hSpeed);

	//drag
	hSpeed = lerp(hSpeed, 0, drag);

	//stop
	if abs(hSpeed) <= 0.1 hSpeed = 0;

	//face correct way
	if hSpeed != 0 facing = sign(hSpeed);

	//limit speed
	hSpeed = min(abs(hSpeed), maxSpeed) * facing;
}