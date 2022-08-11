maxhealth = 76//80
size = 2
if instance_exists(Player)
{
	rad = Player.crownrad
	close=false;
	///crown of natural selection no rads more items
	if Player.crown==13
		rad=40;
	if Player.crown == 17
		rad = 20;
	if Player.loops > 0
		maxhealth += 40;
}
else
{
	rad = 0;
	close = false;
}
spr_idle = sprProtoStatueIdle
spr_hurt = sprProtoStatueHurt
spr_dead = sprProtoStatueDoneDie
alarm[1] = 1;

event_inherited()
canMoveOver = true;
team=0;

snd_hurt = sndStatueHurt
snd_dead = sndStatueDead

instance_create(x-16,y-16-32,Floor)
instance_create(x-16,y-16+32,Floor)
instance_create(x-16-32,y-16,Floor)
instance_create(x-16+32,y-16,Floor)
instance_create(x-16-32,y-16-32,Floor)
instance_create(x-16-32,y-16+32,Floor)
instance_create(x-16+32,y-16-32,Floor)
instance_create(x-16+32,y-16+32,Floor)

with Wall
{
if place_meeting(x,y,other)
{
instance_destroy()
instance_create(x,y,FloorExplo)
}
}

with Floor{
if point_distance(x+16,y+16,other.x,other.y) < 34
sprite_index = sprFloor100}

with instance_place(x,y,prop)
	instance_destroy(id,false);
//alarm[0] = 300;

