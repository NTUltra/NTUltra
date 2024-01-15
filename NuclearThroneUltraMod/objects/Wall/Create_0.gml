var area;
colour = c_white;
depth = 0;
if instance_exists(Player)
{
	area = Player.area
	if scrIsCrown(25)
	{	
		instance_destroy(id,false);
		if !place_meeting(x,y,Floor)
		{
			instance_create(x,y,FloorExplo);
			/*
			if !place_meeting(x-16,y,Floor) && !place_meeting(x-16,y,WallHitMe)
				instance_create(x-16,y,WallHitMe);
			if !place_meeting(x+16,y,Floor) && !place_meeting(x+16,y,WallHitMe)
				instance_create(x+16,y,WallHitMe);
			if !place_meeting(x,y-16,Floor) && !place_meeting(x,y-16,WallHitMe)
				instance_create(x,y-16,WallHitMe);
			if !place_meeting(x,y+16,Floor) && !place_meeting(x,y+16,WallHitMe)
				instance_create(x,y+16,WallHitMe);
			*/
		}
		exit;
	}
}
else area = BackCont.area
if area==104
area=103;
friction = 1;
alarm[0] = 1;
alarm[1] = 1;
if instance_exists(SurvivalWave)//scrIsGamemode(25) && !instance_exists(Vlambeer))
{
	topspr=sprWall116Top;
	outspr=sprWall116Out;
	sprite_index=sprWall116Bot;
}
else
{
	scrWallArea(area);
}
image_speed = 0 

image_index = choose(0,0,0,0,0,0,0,1,2)
if random(150) < 1 
	image_index = 3
else if area == 128 || area == 129
	image_index += choose(0,0,1);
	
image_index += choose(0,4)
topindex = choose(0,0,0,0,0,0,0,1,2)
if random(200) < 1 topindex = 3
topindex += choose(0,4)
outindex = choose(0,0,0,0,1,2,3,4)
outindex += choose(0,4)

l = 0
r = 0
w = 24
h = 24

//event_perform(ev_alarm,1);