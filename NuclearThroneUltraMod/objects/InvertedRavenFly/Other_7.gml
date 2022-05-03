if sprite_index = sprInvertedRavenLift
{
sprite_index = sprInvertedRavenFly
alarm[0] = clamp(point_distance(x,y,targetx,targety)/6,1,300)
}
else if sprite_index = sprInvertedRavenLand
{
if !place_meeting(x,y,Floor)
{
nofly = 0
//Shuffle clsoer to floor to prevent softlock
var n = instance_nearest(x,y,Floor)
var d = point_direction(x,y,n.x+16,n.y+16)
x += lengthdir_x(3,d);
y += lengthdir_y(3,d);
scrInvertedRavenLift()

}
else
{
repeat(6)
{
with instance_create(x+random(16)-8,y+random(16),Dust)
motion_add(random(360),3+random(1))
}

scrTarget()
if target > 0
{
with InvertedRaven
{
if point_distance(x,y,other.x,other.y) < 120 and point_distance(x,y,other.x,other.y) > 32
{
if collision_line(other.target.x,other.target.y,x,y,Wall,1,1) < 0 and random(3) < 2
scrInvertedRavenLift()
}
}
}
z = 0
alarm[1] = 20+random(10)
alarm[2] = -1
if x >__view_get( e__VW.XView, 0 ) and y > __view_get( e__VW.YView, 0 ) and x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
snd_play(sndRavenLand)
instance_change(InvertedRaven,false)
//my_health=other.my_health;
}
}

