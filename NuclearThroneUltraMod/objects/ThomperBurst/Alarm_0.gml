ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	scrSplashDamage(8,46, false,30);
	var visualScale = 0.8;
	with instance_create(x,y,AnimDestroy)
	{
		snd_play(sndCraterImpact,0.1,true)
		sprite_index = sprMeteorLand;
		image_speed = 0.6;
		image_angle = random(360);
		image_xscale = choose(1,-1);
		image_xscale *= visualScale;
		image_yscale *= visualScale;
	}
	with instance_create(x,y,BigScorchMark) {
		sprite_index = sprMeteorLanded;
		image_xscale *= visualScale;
		image_yscale *= visualScale;
		
	}
	BackCont.shake += 30;
	creator.wkick = -8
	if !instance_exists(SpeedLockout)
	{
		with creator
		{
			if !skill_got[2]
			{
				speed = 0;
				with instance_create(x,y,SpeedLockout)
				{
					lockoutTime = 4;
					alarm[0] = lockoutTime;
					if instance_exists(Player)
						resetSpeed = Player.maxSpeed;
				}
				maxSpeed *= 0.25;
			}
		}
	}
}


if ammo <= 0
instance_destroy()

