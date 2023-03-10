/// @desc Some enemy varibles

// Inherit the parent event
event_inherited();

//Intrinsic variables
state = ENEMYSTATE.IDLE;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
localFrame = 0;
animationEnd = true;
dir = 0;
aggroCheck = 0;
aggroCheckDuration = 5;


//Enemy stats
timePassed= 0;
waitDuration = 60;
wait = 0;

image_speed = 0;


//Enemy Scripts
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = -1;
