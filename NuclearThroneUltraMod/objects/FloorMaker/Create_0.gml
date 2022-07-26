direction = choose(0,90,180,270)

styleb = choose(0,0,0,0,0,0,1)

goal = 100//110

if instance_exists(Player){
	if Player.crown == 18
	{
		//Crown of opposite onto crown of disco
		styleb = choose(1,1,1,1,1,1,0)
	}
	var s = clamp(Player.loops*8,0,50);
	if Player.area = 3 and Player.subarea = 3
	goal = 150+s//50
	else if Player.area = 4
	goal = 120+s
	else if (Player.area = 7||Player.area=108) and Player.subarea == 3
	goal = 50+s
	else if Player.area = 100
	goal = 40+s
	else if Player.area = 101
	goal = 95+s
	else if Player.area = 103
	goal = 130+s
	else if Player.area = 102
	goal = 50+s
	else if Player.area = 104
	goal = 10
	else if Player.area = 105
	goal = 145+s
	else if Player.area = 106
	goal = 120+s
	else if Player.area = 114
	goal = 125+s
	else if Player.area = 117
	goal = 130+s
	else if (Player.area = 6||Player.area=112) && Player.subarea=2//LABS BOSS
	goal=1;
	else if Player.area = 9 && Player.subarea < 3
	goal = 130+s
	else if Player.area = 118 && Player.subarea < 3
	goal = 130+s
	else if Player.area = 10
	{
		styleb = choose(0,0,0,0,0,0,1,1)//Slightly higher chance for B tiles
		goal = 120+s
	}
	else if Player.area == 9 && Player.subarea == 3
	goal = 350;
	else if Player.area == 118 && Player.subarea == 3
	goal = 300;
	else if Player.area = 119 || Player.area == 120
	{
		goal = 60;
		s = -10;
	}
	if UberCont.opt_gamemode==6//small levels
	{
		goal=45+s;
		if Player.area == 9 && Player.subarea == 3
			goal = 290;
	}
}
if UberCont.opt_gamemode == 25 //Survival arena
{
	goal = 1;
}
if instance_exists(MenuGen)
goal = 80//60

endPieceSpawned = false;
/*
if instance_number(Floor)<2
{

//safe spawns
/*instance_create(x,y-32,Floor)
instance_create(x-32,y-32,Floor)
instance_create(x+32,y-32,Floor)
instance_create(x,y-64,Floor)
instance_create(x,y-96,Floor)
instance_create(x+32,y-96,Floor)
instance_create(x-32,y-96,Floor)
instance_create(x-64,y-96,Floor)*/
/*
if !place_meeting(x-32,y,NOWALLSHEREPLEASE)// && Player.race = 16 && Player.skill_got[5]
{
myx = x-32+choose(0,16)
myy = y-32+choose(0,16)
instance_create(myx,myy,Wall)
instance_create(x,y,NOWALLSHEREPLEASE)

myx = x+32+choose(0,16)
myy = y-32+choose(0,16)
instance_create(myx,myy,Wall)
instance_create(x,y,NOWALLSHEREPLEASE)

myx = x-32+choose(0,16)
myy = y+32+choose(0,16)
instance_create(myx,myy,Wall)
instance_create(x,y,NOWALLSHEREPLEASE)

myx = x+32+choose(0,16)
myy = y+32+choose(0,16)
instance_create(myx,myy,Wall)
instance_create(x,y,NOWALLSHEREPLEASE)




myx = x-64+choose(0,16)
myy = y-64+choose(0,16)
instance_create(myx,myy,Wall)
instance_create(x,y,NOWALLSHEREPLEASE)

myx = x+64+choose(0,16)
myy = y-64+choose(0,16)
instance_create(myx,myy,Wall)
instance_create(x,y,NOWALLSHEREPLEASE)

myx = x-64+choose(0,16)
myy = y+64+choose(0,16)
instance_create(myx,myy,Wall)
instance_create(x,y,NOWALLSHEREPLEASE)

myx = x+64+choose(0,16)
myy = y+64+choose(0,16)
instance_create(myx,myy,Wall)
instance_create(x,y,NOWALLSHEREPLEASE)
}




with GenCont{
PlayerStartX=x;
PlayerStartY=y-32;}

}*/

instance_create(x,y,Floor)

/* */
/*  */
