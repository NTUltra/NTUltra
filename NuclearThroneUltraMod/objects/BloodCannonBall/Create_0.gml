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
dmg = 17;
ang = random(360);
alarm[3] = 1;
if instance_exists(Player){
	if Player.ultra_got[16]//Melting doomed
		dmg=30;
	if Player.ultra_got[74] && Player.altUltra
		alarm[3] = 0;
}
alarm[1]=140;
if !audio_is_playing(sndBloodCannonLoop)
snd_loop(sndBloodCannonLoop);

/* */
/*  */
