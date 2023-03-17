/// @desc Some enemy varibles

// Inherit the parent event
event_inherited();

//Intrinsic variables
state = ENEMYSTATE.IDLE;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;



aggroCheck = 0;
aggroCheckDuration = 5;


//Enemy stats
timePassed= 0;
waitDuration = 60;
wait = 0;

//Target
target = -1;

//Enemy Scripts
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = -1;
enemyScript[ENEMYSTATE.FALL] = -1

//Enemy sprites
spriteIdle = -1;
spriteWalk = -1;
spriteJump = -1;
spriteFall = -1;
spriteAttack1 = -1;
spriteAttack2 = -1;

//Which turn we should take;
turn = true;
//Jump
jumpSpeed = -5;
jumpToGo = 0;
//Check if on the player
onThePlayer = false;