ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndPopgun)
if (instance_exists(Player))
{
    repeat(2)
    {
    with instance_create(x,y,Bullet2)
    {
    
    
    if (other.creator.x==Player.x)&&(Player.skill_got[19]=1)
    {
    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),11+random(6))
    }
    else{
    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5,11+random(6))}
    
    friction=0.9;
    team = other.team
    
        
        if Player.race=11//HUNTER
        {
        if team=2
        speed*=1.12;//just a slight nerf because this thing is insane with hunter
        }
        
    
    
    }
    }
}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 1
wkick = 2
}


if ammo <= 0
instance_destroy()


