/// @description Winner?
if UberCont.opt_gamemode != 25
{
	if instance_number(enemy) <= instance_number(IDPDVan) && !instance_exists(LilHunterFly) && !instance_exists(InvertedLilHunterFly)
	{
		//var maxU = UberCont.maxUltramod;
		var yy = centerY-96;
		with Corpse
		{
			instance_destroy(id,false);
			instance_create(x,y,SurvivalPortal);
		}
		with WepPickup
		{
			motion_add(point_direction(other.centerX,other.centerY,x,y),8);
		}
		var w = 4;
		var h = 5;
		
		var xstep = 256/w;
		var ystep = 256/h;
		var i = 1;
		for (var iy = 0; iy < h; iy++) {
			var xx = centerX-96;
			for (var ix = 0; ix < w; ix++) {
			    with instance_create(xx,yy,UltraMod)
				{
					instance_create(x,y,SurvivalPortal);
					ultramod = i;
				}
				i++;
				xx += xstep;
			}
			yy += ystep;
		}
		with Floor
		{
			if styleb
			sprite_index = sprFloor100C;
			else
			sprite_index = sprFloor100;
		}
		with FloorExplo
		{
			sprite_index = sprFloor100Explo;	
		}
		with MusCont
		{
			audio_stop_sound(song);
			song = mus100
			snd_loop(song);
		}
	}
	else
	{
		with  enemy
		{
			if (point_distance(other.centerX,other.centerY,x,y) > 400)
				my_health = 0;
		}
		alarm[1] = 60;
	}
}
else
{
	if instance_number(enemy) <= instance_number(IDPDVan) && !instance_exists(LilHunterFly) && !instance_exists(InvertedLilHunterFly)
	{
		instance_create(centerX,centerY,Portal);
	}
	else
	{
		alarm[1] = 60;	
	}
}