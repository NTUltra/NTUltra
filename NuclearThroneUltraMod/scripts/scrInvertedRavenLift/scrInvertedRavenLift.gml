/// @description  scrRavenLift()
function scrInvertedRavenLift() {
	var dir;
	if (nofly <= 0 && sprite_index != spr_hurt) {
	    repeat (6) with (instance_create(x + random(16) - 8, y + random(16), Dust)) motion_add(random(360), 3 + random(1));
	    if (x > __view_get( e__VW.XView, 0 ) && y > __view_get( e__VW.YView, 0 ) && x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) && y < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) snd_play(sndRavenLift);
	    z = 0;
	    scrTarget();
	    if (target > 0 && target.object_index=Player) {
	        var mx = UberCont.mouse__x;
	        var my = UberCont.mouse__y;
	        var tries = 1024;
	        while (--tries >= 0) {
	            targetx = x + lengthdir_x(128, point_direction(mx, my, target.x, target.y) + random(50) - 25);
	            targety = y + lengthdir_y(128, point_direction(mx, my, target.x, target.y) + random(50) - 25);
	            dir = instance_nearest(targetx, targety, Floor);
	            targetx = dir.x + 16 + random(96) - 48;
	            targety = dir.y + 16 + random(96) - 48;
	            dir = instance_nearest(targetx, targety, Floor);
	            targetx = dir.x;
	            targety = dir.y;
	            if (dir.object_index == Floor) {
	                targetx += random_range(10, 22);
	                targety += random_range(10, 22);
	            } else {
	                targetx += 8;
	                targety += 8;
	            }
	            if (place_free(targetx, targety)) break;
	        }
	        if (tries >= 0) {
	            image_index = 0;
	            nofly = 50;
				alarm[2] = 0;
	            instance_change(InvertedRavenFly, false);
	        }/*
			else
			{
				var n = instance_nearest(x,y,Floor)
				image_index = 0;
	            nofly = 50;a
				alarm[2] = 0;
	            instance_change(InvertedRavenFly, false);
				x = n.x+16;
				y = n.y+16;
			}*/
	    }
	}



}
