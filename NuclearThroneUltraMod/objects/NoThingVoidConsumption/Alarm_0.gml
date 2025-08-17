/// @description DO THE THINGG JEFREY
alarm[0] = 3;
if !instance_exists(Player)
	exit;
var regal = gotRegal;
var targetedOne = false;
var preSound = false;
var me = id;
if gotThroneButt
{
	var nullVoid = Player.ultra_got[115] ? 1 : 0;
	var rads = ds_list_create();
	var al = instance_place_list(x,y,Rad,rads,false);
	for (var i = 0; i < al; i++;)
	{
		with rads[| i]
		{
			targetedOne = true;
			if regal 
			{
				if object_index == Rad
					Player.voidBeam += 1;
				else
					Player.voidBeam += 5;
			}
			BackCont.shake += 1;
			radValue *= 0.5;
			isBeingVoided += nullVoid;
			if isBeingVoided != 1
			{
				preSound = true;
				with instance_create_depth(x,y,depth - 1,BecomeVoidBlock)
				{
					shake = 1;
					sprite_index = other.sprite_index;
					createdBy = me;
					blockType = VoidBlockBig;
				}
			}
			else
			{
				//Null instant consumption
				BackCont.shake += 1;
				with instance_create_depth(x,y,depth - 1,VoidBlockBig)
				{
					createdBy = me;
				}
			}
			event_user(0);
			isBeingVoided += nullVoid;
		}
	}
	ds_list_destroy(rads);
	var ammoPickups = ds_list_create();
	var al = instance_place_list(x,y,AmmoPickup,ammoPickups,false);
	for (var i = 0; i < al; i++;)
	{
		with ammoPickups[| i]
		{
			targetedOne = true;
			var isUpg = sprite_index == sprHPUpg;
			BackCont.shake += 2;
			ammoValue *= 0.5;
			if regal
			{
				Player.voidBeam += 5;
				if isUpg
					Player.voidBeam += 2;
			}
			if isBeingVoided != 1
			{
				preSound = true;
				with instance_create_depth(x,y,depth - 1,BecomeVoidBlock)
				{
					shake = 2;
					sprite_index = other.sprite_index;
					if isUpg
					{
						image_xscale += 0.25;
						image_yscale += 0.25;
					}
					else
					{
						image_xscale += 0.125;
						image_yscale += 0.125;
					}
					createdBy = me;
					blockType = VoidBlockBig;
				}
			}
			else
			{
				//Null instant consumption
				BackCont.shake += 2;
				with instance_create_depth(x,y,depth - 1,VoidBlockBig)
				{
					if isUpg
					{
						image_xscale += 0.25;
						image_yscale += 0.25;
					}
					else
					{
						image_xscale += 0.125;
						image_yscale += 0.125;
					}
					createdBy = me;
				}
			}
			event_user(0);
		}
	}
	ds_list_destroy(ammoPickups);
}
else
{
	var pickups = ds_list_create();
	var al = instance_place_list(x,y,Pickup,pickups,false);
	for (var i = 0; i < al; i++;)
	{
		if Player.ultra_got[115]
		{
			with pickups[| i]
			{
				isBeingVoided += 1;
			}
		}
		with pickups[| i]
		{
			targetedOne = true;
			if isBeingVoided != 1
			{
				preSound = true;
				if object_index == Rad
				{
					if regal
						Player.voidBeam += 1;
					with instance_create_depth(x,y,depth - 1,BecomeVoidBlock)
					{
						shake = 1;
						sprite_index = other.sprite_index;
						createdBy = me;
					}
				}
				else
				{
					var isUpg = sprite_index == sprHPUpg;
					if regal
					{
						Player.voidBeam += 5;
						if isUpg
							Player.voidBeam += 2;
					}
					with instance_create_depth(x,y,depth - 1,BecomeVoidBlock)
					{
						shake = 2;
						sprite_index = other.sprite_index;
						createdBy = me;
						blockType = VoidBlockBig;
						if isUpg
						{
							image_xscale += 0.125;
							image_yscale += 0.125;
						}
					}
				}
				instance_destroy();
			}
			else
			{
				if object_index == Rad
				{
					if regal
						Player.voidBeam += 1;
					BackCont.shake += 1;
					with instance_create_depth(x,y,depth - 1,VoidBlock)
					{
						createdBy = me;
					}
				}
				else
				{
					var isUpg = sprite_index == sprHPUpg;
					if regal
					{
						Player.voidBeam += 5;
						if isUpg
							Player.voidBeam += 2;
					}
					BackCont.shake += 2;
					with instance_create_depth(x,y,depth - 1,VoidBlockBig)
					{
						createdBy = me;
						if isUpg
						{
							image_xscale += 0.125;
							image_yscale += 0.125;
						}
					}
				}
			}
			isBeingVoided += 1;
		}
	}
	ds_list_destroy(pickups);
}
if targetedOne
{
	speed -= 0.5;
	speed = max(0,speed);
	BackCont.shake += 4;
	with PlayerAlarms3 {
		voidSphereAngle *= -1;	
	}
	if Player.ultra_got[113] && !Player.altUltra
	{
		BackCont.shake += 2;
		repeat(2)
			with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
			{
				sprite_index = sprVoidBulletTrail;
				image_index = irandom(image_number - 1);
				motion_add(random(360),1);
			}
		/*if altUltra
		{
			alarm[2] = 25;
			if !instance_exists(GunWarrant)
				instance_create(x,y,GunWarrant);
			else
			{
				with GunWarrant
				{
					sprite_index = sprGunWarrantStart;
					image_index = 0;
				}
			}
		}
		else
		{*/
			noThingHealth += 1;
			maxhealth += 1;
						
			if !instance_exists(NoThingHealth)
			{
				instance_create(x,y,NoThingHealth);
			}
			else
			{
				with NoThingHealth
				{
					alarm[0] = lifeDuration;	
				}
			}
		//}
	}
	if preSound
		instance_create_depth(x,y,depth,VoidBlockSound);
	else if !instance_exists(VoidBlock)
	{
		if gotThroneButt
			snd_play_2d(sndVoidConsumptionXL,0.01);
		else
			snd_play_2d(sndVoidConsumptionM,0.01);
	}
	if instance_exists(VoidBlock)
	{
		if gotThroneButt
			snd_play_2d(sndVoidConsumptionL,0.01);
		else
			snd_play_2d(sndVoidConsumptionS,0.01);
	}
	/*else
	{
		if gotThroneButt
			snd_play_2d(sndVoidConsumptionXL,0.01);
		else
			snd_play_2d(sndVoidConsumptionM,0.01);
	}*/
	with VoidBlock
	{
		if createdBy != other.id
		{
			if chain < 2
			{
				BackCont.shake += 1;
				image_index = 0;
				image_xscale = max(image_xscale, 1.125);
				image_yscale = image_xscale;
				image_speed = 0.4;
			}
			chain += 1;
		}
	}
	with Player
		voidBeam = min(voidBeam,voidBeamMax);
	if BackCont.shake > 60
		BackCont.shake = 60;
}
			