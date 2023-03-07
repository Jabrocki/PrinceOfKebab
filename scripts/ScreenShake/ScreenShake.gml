///@desc Screen shake, example when player is hit by something
function ScreenShake(_magnitude, _frames){
	with (global.iCamera)
	{
		if (_magnitude > shakeRemain)
		{
			shakeMagnitude = argument0;
			shakeRemain = shakeMagnitude;
			shakeLength = _frames;
		}
	}
}