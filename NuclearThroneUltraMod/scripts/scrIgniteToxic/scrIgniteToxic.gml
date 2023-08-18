///scrIgniteToxic();
// /@description
///@param
function scrIgniteToxic(){
	if instance_exists(Player) && Player.race == 23
	{
		var t = Player.team;
		var vlam = instance_place(x,y,Flame)
		if vlam != noone
		{
			instance_destroy();
			with instance_create(x,y,Flame) {
				team = t;
				direction = other.direction;
				speed = other.speed+1;
			}
		}
		else
		{
			var explo = instance_place(x,y,Explosion)
			if explo != noone
			{
				instance_destroy();
				with instance_create(x,y,TrapFire) {
					team = t;
					direction = other.direction;
					speed = other.speed+1;
				}
			}
			else
			{
				var vlam = instance_place(x,y,TrapFire)
				if vlam != noone
				{
					instance_destroy();
					with instance_create(x,y,TrapFire) {
						team = t;
						direction = other.direction;
						speed = other.speed+1;
					}
				}
			}
		}
	}
	else
	{
		var vlam = instance_place(x,y,Flame)
		if vlam != noone
		{
			instance_destroy();
			with instance_create(x,y,Flame) {
				team = vlam.team;
				direction = other.direction;
				speed = other.speed+1;
			}
		}
		else
		{
			var explo = instance_place(x,y,Explosion)
			if explo != noone
			{
				instance_destroy();
				with instance_create(x,y,TrapFire) {
					team = other.team;
					direction = other.direction;
					speed = other.speed+1;
				}
			}
			else
			{
				var vlam = instance_place(x,y,TrapFire)
				if vlam != noone
				{
					instance_destroy();
					with instance_create(x,y,TrapFire) {
						team = vlam.team;
						direction = other.direction;
						speed = other.speed+1;
					}
				}
			}
		}
	}
}