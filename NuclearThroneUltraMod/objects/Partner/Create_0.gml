if !instance_exists(Player){
instance_destroy(); exit;}

gammaGuts = false;
dealingGuts = false;
if Player.skill_got[8] {
	gammaGuts = true;
	alarm[5] = 1;
}
image_speed = 0.4
friction = 0.4
right = choose(1,-1)

target = -1

team = 2
reload=0;
mySize=1;
//behavior
walk = 0
gunangle = random(360)
previousgunangle=gunangle;
alarm[1] = 10
//alarm[0] = 24/0.4//intro animation which is cool af
wkick = 0
protect=0;
Direction=random(360);
shootCooldown = 16;
shootTime = 0;
xx=Player.x+lengthdir_x(irandom_range(6,16),Direction);
yy=Player.y+lengthdir_y(irandom_range(6,16),Direction);

