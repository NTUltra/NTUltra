/// @description Start sucking

// Inherit the parent event
event_inherited();

alarm[1] = 1;
suckedProjectiles = ds_list_create();
dmg = 1;
if instance_exists(Player) && Player.skill_got[17]
	dmg += 0.5;
chargeType = scrGetChargeType();
pitch = 0;
released = false;
dust = true;
cantSuck = 3;
suckStrength = 1;
loopSnd = sndSuckCannonLoop;
sndRelease = sndSuckCannonRelease;
canSuckEnem = -1;