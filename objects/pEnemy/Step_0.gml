/// @desc Enemy State Machine
if (!global.gamePaused)
{
	if (enemyScript[state] != -1) script_execute(enemyScript[state]);
}