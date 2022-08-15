///scrCrownOfDeath();
// /@description
///@param
function scrCrownOfDeath(am = 3,dis = 34){
	if Player.crown == 3//Crown of death
	{
		var ang = random(360);
		var angStep = 360/am;
		repeat(am)
		{
			with instance_create(x+lengthdir_x(dis,ang),y+lengthdir_y(dis,ang),SmallExplosion)
			{
				dmg -= 1;
				alarm[0] = 0;
			}
			ang += angStep;
		}
	}
}