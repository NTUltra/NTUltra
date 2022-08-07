audio_stop_sound(sndSheepLoopUpg);
audio_stop_sound(sndSheepLoop);
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

with enemy
{
if point_distance(x,y,other.x,other.y)<72
{
motion_add(point_direction(x,y,other.x,other.y)+180,4);
walk=4;
move_contact_solid(point_direction(x,y,other.x,other.y)+180,8);
}

}

repeat(16)
{
with instance_create(x+random(16)-8,y+random(30)-15,Dust)
motion_add(random(360),random(3));

}

