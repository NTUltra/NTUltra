if RogueIDPD=true
{
	with instance_create(x,y,IDPDVan)
	{
		RogueIDPD=other.RogueIDPD;
		spr_idle = sprRogueVanOpen
		spr_walk = sprRogueVanDrive
		spr_hurt = sprRogueVanHurt
		spr_dead = sprRogueVanDead
		team = 2;
		if instance_exists(Player)
		{
			if Player.x>x//right
			{right=1
			motion_add(0,8);
			}
			else//left
			{right=-1;
			motion_add(180,8);}
		}
	}
}
else
{
	if vertical
	{
		with instance_create(x,y,IDPDVanVertical)
		{
			if (other.dropFreaks)
			{
				dropFreaks = true;
				spr_idle = sprFreakVanOpen;
				spr_walk = sprFreakVanDrive;
				spr_hurt = sprFreakVanHurt;
				spr_dead = sprFreakVanDead;
			}
			
			right = other.right;
			if right == 1
			{
				motion_add(90,8);
				image_angle = 90;
			}
			else
			{
				motion_add(270,8);
				image_angle = 270;
			}
		}
	}
	else
	{
		with instance_create(x,y,IDPDVan)
		{
			if (other.dropFreaks)
			{
				dropFreaks = true;
				spr_idle = sprFreakVanOpen;
				spr_walk = sprFreakVanDrive;
				spr_hurt = sprFreakVanHurt;
				spr_dead = sprFreakVanDead;
			}
			
			right = other.right;
			if right == 1
			{
				motion_add(0,8);
			}
			else//left
			{
				motion_add(180,8);
			}
		}
	}
	if squareRight != 0 {
		var vy = camera_get_view_y(view_camera[0]);
		var vh = camera_get_view_height(view_camera[0]);
		var vx = camera_get_view_x(view_camera[0]);
		var vw = camera_get_view_width(view_camera[0]);
		var t = 3;
		if dropFreaks
			t = 4;
		if vertical {
			var yScale = -1;
			var vxx = x;//vx + (vw*0.5);
			var squareAngle = 0;
			var yyy = vy;
			if squareRight < 0 {
				//Down
				squareAngle = 270;
				yScale = 1;
				yyy = vy+vh;
			}
			for (var i = 1; i <= amountOfBullets*0.5; i++)
			{
				with instance_create(vxx - bulletStep * i,yyy, EnemyBullet1Square) {
					onlyHitPlayerTeam = true;
					sprite_index = sprIDPDSquareBullet;
				    vspeed = yScale*-14;
				    image_angle = direction
				    team = t;
				}
				with instance_create(vxx + bulletStep * i,yyy, EnemyBullet1Square) {
					onlyHitPlayerTeam = true;
					sprite_index = sprIDPDSquareBullet;
				    vspeed = yScale*-14;
				    image_angle = direction
				    team = t;
				}
			}	
		} else {
			var xScale = 1;
			var xxx = vx+vw;
			var vyy = y;//vy + (vh*0.5);
			if squareRight > 0 {
				//Right
				xScale = -1;
				xxx = vx;
			}
			for (var i = 1; i <= amountOfBullets*0.5; i++)
			{
				with instance_create(xxx,vyy - bulletStep * i, EnemyBullet1Square) {
					onlyHitPlayerTeam = true;
					sprite_index = sprIDPDSquareBullet;
				    hspeed = xScale*-14;
				    image_angle = direction
				    team = t;
				}
				with instance_create(xxx,vyy + bulletStep * i, EnemyBullet1Square) {
					onlyHitPlayerTeam = true;
					sprite_index = sprIDPDSquareBullet;
				    hspeed = xScale*-14;
				    image_angle = direction
				    team = t;
				}
			}
		}
	}	
	squareRight = 0;
}