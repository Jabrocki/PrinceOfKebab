/// @desc State, sprites and state functions  assigned

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER
spriteAttack = noone;

//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = SkeletonStateWander;
enemyScript[ENEMYSTATE.CHASE] = SkeletonStateChase;
enemyScript[ENEMYSTATE.ATTACK] = SkeletonStateAttack;
enemyScript[ENEMYSTATE.FALL] = SkeletonStateFall;
enemyScript[ENEMYSTATE.JUMP] = SkeletonStateJump;

//enemyScript[ENEMYSTATE.HURT] = ZombieStateHurt;
//enemyScript[ENEMYSTATE.DIE] = ZombieStateDie;

//Enemy sprites
spriteIdle = sSkeletonIdle;
spriteWalk = sSkeletonWalk;
spriteFall = sSkeletonFall;
spriteJump = sSkeletonJump;
spriteAttack1 = sSkeletonAttack1;
spriteAttack2 = sSkeletonAttack2;
