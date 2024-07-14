event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
image_speed=0.4;
alarm[0]=4;
image_angle=random(360);
friction = 0.1;

alarm[1]=140;
snd_loop(sndSnowBlowerLoop);
dmg = 10;
shotgunShoulders = false;

/* */
/*  */
if instance_exists(Player) && Player.skill_got[15]
{
	shotgunShoulders = true;	
}