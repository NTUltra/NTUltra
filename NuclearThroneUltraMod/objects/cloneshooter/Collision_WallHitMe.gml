if !instance_exists(Player){instance_destroy();exit;}
move_contact_solid(direction,max(1,min(Player.maxSpeed,speed)))
if !place_free(x+hspeed,y){hspeed /= 2
if !place_free(x+hspeed,y) hspeed = 0}
if !place_free(x,y+vspeed){vspeed /= 2
if !place_free(x,y+vspeed)vspeed = 0}

