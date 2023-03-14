///@desc 
function MACROS(){
	#macro VOID 0
	#macro SOLID 1
	#macro PLATFORM 2

	//camera
	#macro UD -1 //undefined
	
	enum ENEMYSTATE
	{
		IDLE,
		WANDER,
		CHASE,
		ATTACK,
		HURT,
		DIE,
		WAIT,
		FALL,
		JUMP
	}
}