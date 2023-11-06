typ = 0//0 = nothing, 1 = deflectable, 2 = destructable


trn = (random(5)+5)*choose(1,-1)

if instance_exists(Player)
direction = point_direction(x,y,Player.x,Player.y)
else
direction = random(360)

bounces = 0

alarm[2]=600;
alarm[3] = 60;