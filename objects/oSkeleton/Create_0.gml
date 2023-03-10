/// @desc State, sprites and state functions  assigned

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = SkeletonStateWander;
enemyScript[ENEMYSTATE.CHASE] = SkeletonStateChase;

//enemyScript[ENEMYSTATE.HURT] = ZombieStateHurt;
//enemyScript[ENEMYSTATE.DIE] = ZombieStateDie;

