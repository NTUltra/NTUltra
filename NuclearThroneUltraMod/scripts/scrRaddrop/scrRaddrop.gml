/// @description Anything that drops rads runs this
function scrRaddrop(amountOfRads = raddrop, xx = x, yy = y) {

	if instance_exists(Player)
	{
		if Player.ultra_got[81]//Horror Stalker
		{
			var am = ceil(amountOfRads*0.7);//0.6 in real game
			am = min(am,40);
			if scrIsGamemode(35)
			{
				am = min(am,14);
				if instance_number(HorrorBullet) > 100
					return;
			}
			var angstep = 360/am;
			var ang = random(360);
			repeat(am)
			{
				with instance_create(xx,yy,HorrorBullet)
				{
				motion_add(ang,14)
				image_angle = direction
				team = Player.team
				bskin=Player.bskin
				}
				ang += angstep;
			}
		}
	}



	do {if amountOfRads > 12//15
	{amountOfRads -= 10
	with instance_create(x,y,BigRad)
	{motion_add(other.direction,other.speed+1)
	motion_add(random(360),random(amountOfRads*0.5)+3)
	repeat(speed)
	speed *= 0.9}}
	}
	until amountOfRads <= 15

	repeat(amountOfRads)
	{
	with instance_create(x,y,Rad)
	{motion_add(other.direction,other.speed+1)
	motion_add(random(360),random(amountOfRads*0.5)+3)
	repeat(speed)
	speed *= 0.9}
	}



}
