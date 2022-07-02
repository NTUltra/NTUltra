///scrCrownOfDeath();
// /@description
///@param
function scrCrownOfDeath(am = 3,dis = 32){
	if Player.crown == 3//Crown of death
	{
		var ang = random(360);
		var angStep = 360/am;
		repeat(am)
		{
			with instance_create(x+lengthdir_x(dis,ang),y+lengthdir_y(dis,ang),SmallExplosion)
				alarm[0] = 0;
			ang += angStep;
		}
	}
}