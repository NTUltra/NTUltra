var area;
gotShadow = false;
phaseable = false;
colour = c_gray;
alarm[2] = 70;//90
blink = 15;
depth = 0;
if instance_exists(Player)
{ 
	if Player.ultra_got[93] && !Player.altUltra
	{
		phaseable = true;
		solid = false;
		mask_index = mskPickupThroughWall;
		alarm[1] = 1;
	}
area = Player.area
//if Player.skill_got[5]//thronebutt deflect
myWall = instance_create(x,y,ElementorWallDeflect);
myWall.myWall=id;
}
else area = BackCont.area
if area==104
	area=103;
if instance_exists(PitNavigation) && area != 139 && area != 140
	area = PitNavigation.currentArea;
scrWallArea(area);

image_speed = 0 

image_index = choose(0,0,0,0,0,0,0,1,2) 
if random(150) < 1 image_index = 3
image_index += choose(0,4)

topindex = choose(0,0,0,0,0,0,0,1,2)
if random(200) < 1 topindex = 3
topindex += choose(0,4)
outindex = choose(0,0,0,0,1,2,3,4)
outindex += choose(0,4)


realTopSpr = topspr;
realOutSpr = outspr;
l = 0
r = 0
w = 24//24
h = 24//24