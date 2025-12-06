///scrTurnIntoPortalArea();
// /@description
///@param
function scrTurnIntoPortalArea(shouldBeInverted = false){
	scrActivateAllOutOfRange();
	with Top
	{
		instance_destroy(id,false);	
	}
	with TopSmall
	{
		instance_destroy(id,false);	
	}
	with TopDecal
	{
		instance_destroy(id,false);	
	}
	with Bones
	{
		instance_destroy(id,false);	
	}
	var r = 0;
	if instance_exists(Player)
		r = Player.race;
	with Wall
	{
		instance_destroy(id,false);
		if !collision_point(x+8,y+8,Floor,false,false)//Angel can fly
			instance_create(x,y,WallHitMe);
	}
	with Debris
		instance_destroy(id,false);
	var deepestDepths = 100;
	var sprExplo = sprFloor0Explo;
	var spr = sprFloor0;
	var sprb = sprBackFloor;
	var sprb2 = sprBackFloor2;
	var sprs = sprBackFloorSmall;
	if shouldBeInverted
	{
		sprExplo = sprFloor120Explo;
		spr = sprFloor120;
		sprb = sprInvertedBackFloor;
		sprb2 = sprInvertedBackFloor2;
		sprs = sprInvertedBackFloorSmall;
	}
	if instance_exists(Floor)
	{
		var targetDepth = Floor.y + 1000;
		with Floor
		{
						
			var d = max(9, targetDepth -  round(y/16));
			if d > deepestDepths
				deepestDepths = d;
							
			if object_index == FloorExplo
			{
				sprite_index = sprExplo;
				with instance_create(x,y,BackFloorSmall)
				{
					depth = d + 1;
					sprite_index = sprs;
				}
			}
			else
			{
				sprite_index = spr;
				with instance_create(x,y,BackFloor)
				{
					sprite_index = sprb;
					sprBack2 = sprb2;
					depth = d + 1;
				}
			}
		}
	}
	with instance_create(x,y,ThroneIISpiral)
	{
		depth = deepestDepths + 2;	
	}
	with PlayerAlarms
	{
		alarm[4] = 30;
	}
	with MusCont
		{
			scrStopAmbience();
			amb = amb0c;
			scrPlayAmbience();
			audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		    audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		    audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
		}
}