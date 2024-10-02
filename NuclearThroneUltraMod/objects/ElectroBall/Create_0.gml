event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
hasWallCollision = true;
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
//friction=0.4;
lightning = Lightning;
dmg = 4;
damageDelay = 15;
dmgReduction = 0;
target=noone;
hitEntities = [];
bounce = 1;
shotgunShoulders = 0;
if instance_exists(Player)
{
	if Player.skill_got[17]
	{
		dmg += 1;
	}
	if Player.skill_got[15]
	{
		bounce += 1;
		shotgunShoulders += 14;
	}
}
originalDirection=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
direction=originalDirection;
image_speed = 0.5

sprInactive = sprElectroBall;
sprActive = sprElectroBallActive;
alarm[1]=1 + irandom(4);
alarm[0]=1;
electroDelay = 10;
alarm[11] = 1;
alarm[5] = 10;
rampTime = 15;