///@description Fire
if instance_exists(Player){
if ammo > 0
{
ammo -= 1
alarm[2] = 4+irandom(3);
snd_play(sndLightning1,0.1)
sprite_index = spr_fire
    /*with instance_create(x,y,Lightning)
    {image_angle = other.gunangle+random(6)-3
    team = other.team
    ammo=6;
    //event_perform(ev_alarm,0)
    }*/
    with instance_create(x,y,Lightning)
	{
		image_angle = point_direction(x,y,Player.x,Player.y)+(random(30)-15)
		team = other.team
		ammo = 8
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
}
else
{
sprite_index = spr_idle
}
}