/// @description lightning lightning ever so frightning
if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
snd_play(choose(sndSpark1,sndSpark2,sndLightning1,sndLightning3,sndLightningHammer))

with instance_create(x,y,UltraLightning)
{
	iframeskip -= 0.02;
	image_angle = random(360);
	accuracy=0;
	team = other.team
	ammo = 18;
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
}
alarm[0] = 3+irandom(2);
BackCont.shake += 4
var walls = ds_list_create();
var ys = image_yscale;
var xs = image_xscale;
image_yscale = 12;
image_xscale = 12;
var al = instance_place_list(x,y,Wall,walls,false)
for (var i = 0; i < al; i++) {
	with instance_create(walls[| i].x,walls[| i].y,FloorExplo)
		canSpawnSwarm = true;
	instance_destroy(walls[| i]);
}
if al > 0
	speed -= 1;
image_yscale = ys;
image_xscale = xs;
ds_list_clear(walls);