if atk=1//breath fire pls
{
    alarm[2]=36;//fire breather
    snd_play(sndDragonStart);
    snd_loop(sndDragonLoop);
    alarm[1]=36;
    image_index = 0
    sprite_index = spr_fire;
    
}
if atk=2//BLUE BALL OF FIRE!
{
    image_index=0;
    sprite_index=spr_fire;
    alarm[1]=10;

	if (target != noone && target != -1 && instance_exists(target))
		direction = point_direction(x,y,target.x,target.y)//backup backup
    BackCont.shake += 10
    snd_play(sndDragonStop)
    repeat(12)
    {
    with instance_create(x,y,EnemyIceFlame)
    {
    motion_add(other.direction+random(60)-30,2+random(6))
    image_angle = direction
    team = other.team
    }
    }
        with instance_create(x,y,HotDrakeFlameCannon)
        {
        image_angle=random(360);
        motion_add(other.direction+(random(12)-6),3)
        team = other.team}
        
    
}

if atk=3//SPLIT BALL YO
{
appear=true;
    image_index=0;
    sprite_index=spr_fire;
    alarm[1]=11;
	if (target != noone && target != -1 && instance_exists(target))
    direction = point_direction(x,y,target.x,target.y)//BACK UP
    BackCont.shake += 10
    snd_play(sndDragonStop)
    repeat(12)
    {
    with instance_create(x,y,EnemyIceFlame)
    {
    motion_add(other.direction+random(60)-30,2+random(6))
    image_angle = direction
    team = other.team
    }
    }
        with instance_create(x,y,InvertedHotDrakeSplitBall)
        {
			inverted= true;
        image_angle=random(360);
        motion_add(other.direction+(random(12)-6),2.7)
        team = other.team}
        
    
}

image_speed=0.4;

