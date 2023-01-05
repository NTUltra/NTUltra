if awake{
    alarm[1] = 6+random(8)
    if sprite_index != spr_hurt //&& sprite_index != spr_fire i added this
    sprite_index = spr_idle
    scrTarget()
    
    if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 4+random(5);
}
    
    if target > 0
    {
    if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
    {
    if my_health<maxhealth*0.75&&random(40)<1
    {
    sprite_index=spr_vanish
    image_index=0;
    mask_index=mskPickupThroughWall;
    direction=90;
    alarm[1]=300;
    alarm[4]=40
    //vanishing=0;
    }
    else if point_distance(x,y,target.x,target.y)>300&&random(3) < 1//long Shotgun!
    {
    image_index=0;
    sprite_index=spr_fire;
    alarm[1]=8;

    direction = point_direction(x,y,target.x,target.y)//go to player
    BackCont.shake += 5
    snd_play(sndDragonFire)
    repeat(6)
    {
    with instance_create(x,y,TrapFire)
    {
    sprite_index = sprFireLilHunter
    motion_add(other.direction+random(60)-30,4+random(6))
    image_angle = direction
    team = other.team
    }
    }
    repeat(4){
        with instance_create(x,y,MiniFlameCannonBall)
        {
        image_angle=random(360);
        motion_add(other.direction+(random(22)-11),6+random(5))
        team = other.team}
        }
    }
    else if point_distance(x,y,target.x,target.y)>70&&random(14) < 1//long range
    {
    image_index=0;
    sprite_index=spr_fire;
    alarm[1]=39;

    direction = point_direction(x,y,target.x,target.y)//go to player son
    BackCont.shake += 5
    snd_play(sndDragonFire)
    repeat(8)
    {
    with instance_create(x,y,TrapFire)
    {
    sprite_index = sprFireLilHunter
    motion_add(other.direction+random(60)-30,2+random(6))
    image_angle = direction
    team = other.team
    }
    }
        with instance_create(x,y,MiniFlameCannonBall)
        {
        image_angle=random(360);
        motion_add(other.direction+(random(40)-20)+50,4.4)
        team = other.team}
        with instance_create(x,y,MiniFlameCannonBall)
        {
        image_angle=random(360);
        motion_add(other.direction+(random(40)-20)-50,4.5)
        team = other.team}
        with instance_create(x,y,MiniFlameCannonBall)
        {
        image_angle=random(360);
        motion_add(other.direction+(random(40)-20),4.5)
        team = other.team}
    }
    else if point_distance(x,y,target.x,target.y)>70&&random(14) < 1//long SNIPE!
    {
    image_index=0;
    sprite_index=spr_fire;
    alarm[1]=12;

    direction = point_direction(x,y,target.x,target.y)//go to player
    BackCont.shake += 5
    snd_play(sndDragonFire)
    repeat(8)
    {
    with instance_create(x,y,TrapFire)
    {
    sprite_index = sprFireLilHunter
    motion_add(other.direction+random(60)-30,2+random(5))
    image_angle = direction
    team = other.team
    }
    }
        with instance_create(x,y,MiniFlameCannonBall)
        {
        image_angle=random(360);
        motion_add(other.direction+(random(12)-6),7)
        team = other.team}
    }
    else if random(8)<1 && point_distance(x,y,target.x,target.y)<200//breathe fire short range
    {
    alarm[3]=40//prep time
    image_index = 0
    sprite_index = spr_prep//spr_prep
    alarm[1] = 45
    atk=1;
    }
    else if random(12)<1//fireball
    {
    alarm[3]=15//prep time
    image_index = 0
    sprite_index = spr_prep//spr_prep
    alarm[1] = 17
    atk=2;
    }
    else if random(9)<1//splitball
    {
    alarm[3]=15//prep time
    image_index = 0
    sprite_index = spr_prep//spr_prep
    alarm[1] = 16
    atk=3;
    }
    else if point_distance(x,y,target.x,target.y)>200//move towards player if you're far away
    {motion_add(point_direction(x,y,target.x,target.y),1.4);}
    else if random(5)<1
    {motion_add(270,1)}//down?
    else if random(5)<1
    {motion_add(90,2+random(5))}//up?
    else if random(5)<1
    {motion_add(random(360),1)}//random?
    else if random(5)>1
    {motion_add(point_direction(x,y,target.x,target.y),1.4);}//towards Player
    else if random(5)>1
    {motion_add(point_direction(x,y,target.x,target.y)+180,1);}//away from Player
    else 
    motion_add(random(360),1)//I donno just go
    
    }//cant see player snipe their cover and be aggro
    else
    { 
    if point_distance(x,y,target.x,target.y)>450&&random(3) < 1//long Shotgun! don't you hide from me!
    {
    image_index=0;
    sprite_index=spr_fire;
    alarm[1]=12;

    direction = point_direction(x,y,target.x,target.y)//go to player
    BackCont.shake += 5
    snd_play(sndDragonFire)
    repeat(6)
    {
    with instance_create(x,y,TrapFire)
    {
    sprite_index = sprFireLilHunter
    motion_add(other.direction+random(60)-30,4+random(6))
    image_angle = direction
    team = other.team
    }
    }
    repeat(4){
        with instance_create(x,y,MiniFlameCannonBall)
        {
        image_angle=random(360);
        motion_add(other.direction+(random(22)-11),6+random(5))
        team = other.team}
        }
    }
    else if point_distance(x,y,target.x,target.y)>70&&random(14) < 1//cover sniper!
    {
    image_index=0;
    sprite_index=spr_fire;
    alarm[1]=12;

    direction = point_direction(x,y,target.x,target.y)//go to player
    BackCont.shake += 5
    snd_play(sndDragonFire)
    repeat(8)
    {
    with instance_create(x,y,TrapFire)
    {
    sprite_index = sprFireLilHunter
    motion_add(other.direction+random(60)-30,2+random(6))
    image_angle = direction
    team = other.team
    }
    }
        with instance_create(x,y,MiniFlameCannonBall)
        {
        image_angle=random(360);
        motion_add(other.direction,2+random(4))
        team = other.team}
    }
    
    
    motion_add(random(360),1)
    }
    }
    else 
    motion_add(random(360),0.5)
    
    if random(100)<10{//Hot breath of awesomeness
    repeat(4){//if breath doesn't come out of nose enuf then we could make it happen only in certain frame
    with instance_create(x-16,y,Smoke){
    motion_add(270+random(12)-6,1+random(4));
    }}
    
    }
    

}

