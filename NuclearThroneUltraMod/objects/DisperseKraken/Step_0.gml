/// @description Wall Collision
if collision_line(xprevious,yprevious,x,y,Wall,false,false)
{
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
	instance_destroy()
	instance_create(x,y,Dust)
	snd_play(sndBloodLauncherExplo,0.2);
	var ang = direction;
	repeat(6)
	{
		with instance_create(xprevious,yprevious,Tentacle)
		{
			scrCopyWeaponMod(other);
			image_angle = ang;
			creator=other.id;
			team = other.team
			ammo = 16
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
			}

			with instance_create(x,y,FishBoost)
			{
			motion_add(other.image_angle-90+random(60)-30,2+random(4) );
			}

		}
		ang += 60;
	}
}