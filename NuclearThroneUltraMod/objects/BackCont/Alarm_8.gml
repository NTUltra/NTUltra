/// @description Bullet hell
var numEn = -3;//Leaway
with enemy
{
	if team != 2
		numEn ++;
}
//Level nearly ended?
if !(numEn <= 0 || (instance_exists(IDPDVan) && numEn <= instance_number(IDPDVan)))
{
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	var cw = camera_get_view_width(view_camera[0]);
	var ch = camera_get_view_height(view_camera[0]);
	var o = 256;
	var am = 14;
	var dis = 96 - clamp((bulletHellLoops-10)*5,0,30);
	var stair = 24;
	
	switch (bulletHell % 4)
	{
		case 0:
		//LEFT TO RIGHT
			var xx = cx - o;
			var yy = cy - o;
			var ad = 0;
			var ang = 90;
			var vdis = dis;
			var hdis = stair*-1;
		break;
		case 1:
		//TOP TO BOTTOM
			var xx = cx - o;
			var yy = cy - o;
			var ad = 270;
			var ang = 0;
			var vdis = stair*-1;
			var hdis = dis;
		break;
		case 2:
		//RIGHT TO LEFT
			var xx = cx + cw + o;
			var yy = cy - o;
			var ad = 180;
			var ang = 90;
			var vdis = dis;
			var hdis = stair;
		break;
		case 3:
		//BOTTOM TO TOP
			var xx = cx - o;
			var yy = cy + ch + o;
			var ad = 180;
			var ang = 0;
			var vdis = stair;
			var hdis = dis;
		break;
	}
	repeat(am)
	{
		with instance_create(xx,yy,InvertedThrone2WaveSquareBullet)
		{
			onlyHitPlayerTeam = true;
			offset = 2;
			pSpeed = 3 + clamp((other.bulletHellLoops-10)*0.2,0,1.8);
			spawnDelay = 70 - clamp((other.bulletHellLoops-10)*5,0,30);
			team = 1;
			desY = y;
			desX = x;
			alarm[3] += 60;
			desTime = 1;
			aimDirection = ad;
			angle = ang;
		}
		yy += vdis;
		xx += hdis;
	}
	bulletHell ++;
}
alarm[8] = 180;