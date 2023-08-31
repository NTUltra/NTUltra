function startJump() {
	fire = true;
    sprite_index = spr_fire;
    spr_idle = spr_fire;
    spr_walk = spr_fire;
    speed *= 0.2;
    alarm[2] = 20; //chargeup time
}

alarm[1] = actTime + random(actTime)
scrTarget()
walk = 0
if jumpUp || jumpDown || fire
exit;
if target > 0 {
    //GOT TARGET
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 and point_distance(x, y, target.x, target.y) < 320 {
        //CAN SEE
        direction = point_direction(x, y, target.x, target.y) + random(60) - 30
        if (point_distance(x, y, target.x, target.y) < 164 && random(3) < 1) {
			//IM CLOSE ENOUGH
            startJump();
        } else if (point_distance(x, y, target.x, target.y) < 128 && random(4) < 3 && justjumped) {
			//I FEEL LIKE CHAINING JUMPS
			startJump();
        } else {
            //TOO FAR FOR ME TO CARE IM JUST A DOG
            direction = random(360)
			alarm[1] += 20;
        }
    }
    else {
        //CANT SEE
        direction = random(360)
		alarm[1] += 20;
    }
}
else {
    direction = random(360);
    alarm[1] += 20;
}

justjumped = false;
