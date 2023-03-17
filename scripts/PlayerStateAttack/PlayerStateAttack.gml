function PlayerStateAttack()
{
	hSpeed = 0;
	vSpeed = 0;
	
	//Start
	if (sprite_index != sPlayerAttack)
	{
		sprite_index = sPlayerAttack;
		image_index = 0;
		ds_list_clear(ObjHit);
	}
	
	mask_index = sPlayerAttack_HB;
	var ObjHitNow = ds_list_create();
	var Hit = instance_place_list(x,y,oTest,ObjHitNow,false);
	if (Hit > 0)
	{
		for (var i = 0; i < Hit; i++)
		{
			var HitID = ObjHitNow[| i];
			if (ds_list_find_index(ObjHit,HitID) == -1)
			{
				ds_list_add(ObjHit,HitID);
				with (HitID)
				{
					TestState = 0;
				}
			}
		}
	}
	ds_list_destroy(ObjHitNow);
	mask_index = sPlayerIdle;
	
	if (AnimationEnd())
	{
		playerState = PlayerStateFree;
	}
}