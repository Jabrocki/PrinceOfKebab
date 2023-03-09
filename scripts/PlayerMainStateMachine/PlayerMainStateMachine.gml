// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMainStateMachine(){
	if (keyActivate)
	{
		// Check for an entity to activate
		var _activateX = x + lengthdir_x(20,direction);
		var _activateY = y + lengthdir_y(48,direction);
		var _activateSize = 4;
		var _activateList = ds_list_create();
		activate = noone;
		var _entitiesFound = collision_rectangle_list(
			_activateX - _activateSize,
			_activateY - _activateSize,
			_activateX + _activateSize,
			_activateY + _activateSize,
			pEntity,
			false,
			true,
			_activateList,
			true
		)
		//if the first instance we find is either our lifted entity or it has no script: try the next one
		while (_entitiesFound > 0)
		{
			var _check = _activateList[| --_entitiesFound];
			if (_check != global.iLifted and _check.entityActivateScript != -1)
			{
				activate = _check;
				break;
			}
		}
		
		ds_list_destroy(_activateList);
		
		//Activate entity script
		if(activate != noone and activate.entityActivateScript != -1)
		{
			//Activate he entity
			script_execute_ext(activate.entityActivateScript, activate.entityActivateArgs);
			//Make an npc face the player
			if (activate.entityNPC)
			{
				with(activate)
				{
						if(oPlayer.direction == 0) image_xscale = 1; else image_xscale = -1;
				}
			}
		}
		
	}
}