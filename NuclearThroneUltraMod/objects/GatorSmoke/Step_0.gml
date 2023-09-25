event_inherited();
if speed > 1
speed = 1
scrTarget()
if target != noone {
    if (point_distance(x, y, target.x, target.y) < 128 || collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0) && !instance_exists(Portal)
    timer += 1
    if alarm[2] < 1 && timer > 30 {
		alarm[2] = 12

        with instance_create(x, y, Shell) {
			sprite_index = sprCigarette
			motion_add(random(360), 2)
		}
        
    }
}

if image_index < 1
image_index += random(0.02)
else
    image_index += 0.4

