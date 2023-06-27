///scrProjectileStyle();
// /@description
///@param
function scrProjectileStyle(pt, px, py){
	//var limitProjectiles = 90;
	with projectile
	{
		if team == pt
		{
			//limitProjectiles --;
			//if limitProjectiles < 0
			//	return;
			var moveDir = point_direction(px,py,UberCont.mouse__x,UberCont.mouse__y)
			if canBeMoved
			{
				x = px+lengthdir_x(8,moveDir);
				y = py+lengthdir_y(8,moveDir);
				speed += friction;
				scrForcePosition60fps();
			}
			//Bigger mask for hitting other bullets
			//What if the projectile is big such as flame cannon?
			var projectiles = ds_list_create();
			var al = instance_place_list(x,y,projectile,projectiles,false);
			var hitSomething = false;
			for (var pindex = 0; pindex < al; pindex++) {
				with projectiles[| pindex]
				{
					if team != pt
					{
						BackCont.shake += 1;
						if isGrenade
						{
							hitSomething = true;
							instance_destroy(id, false);
						}
						else if canBeMoved
						{
							hitSomething = true;
							instance_destroy()
						}
						if hitSomething
						{
							//Destroy only one then destroy
							pindex = al;
							instance_create(x,y,EyesProjectileStyleConsumption);
							with instance_create(x,y,Notice)
							{
								image_speed = 0.4;
								sprite_index = sprHumphryDestroyProjectile;
							}
							BackCont.shake += 1;
						}
					}
				}
			}
			ds_list_destroy(projectiles);
			if hitSomething
				snd_play(sndProjectileDestroy,0.1,true);
		}
	}
}