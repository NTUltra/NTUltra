/// @description Goldshine

alarm[1] = 10 + random(40);

with instance_create(x+hspeed,
y+vspeed,CaveSparkle){
image_angle=random(360);
depth=other.depth - 1}