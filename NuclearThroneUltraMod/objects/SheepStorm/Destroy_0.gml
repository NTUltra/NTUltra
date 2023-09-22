/// @description some fx reset speed
if instance_exists(Player){



with Player
{

if skill_got[2]==1//extra feet
{
maxSpeed=4.5;
}
else
{
maxSpeed=4;
}

}


}


repeat(12)
{
	with instance_create(x+random(16)-8,y+random(30)-15,Dust)
		motion_add(random(360),random(3));

}
