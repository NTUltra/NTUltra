var Direction=Originalangle
dir = Direction;
target=instance_nearest(x+lengthdir_x(80,Direction),y+lengthdir_y(80,Direction),enemy);// nearest in direction of cursor

if instance_exists(target)
{
        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
        {
            if(Direction<point_direction(x,y,target.x,target.y)+30)&&point_distance(x,y,target.x,target.y)<64//+(30*Player.skill_got[19]))
            {
            dir=point_direction(x,y,target.x,target.y);
            }
       }
}



//if instance_exists(target)
//dir = instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),target)
var oldx, oldy;
oldx = x
oldy = y
direction=Direction;
direction = image_angle//+(random(14)-(7))//30-15   24-12
speed = 4
//if instance_exists(target)
//{
//if point_distance(x,y,target.x,target.y) < 240//120
motion_add(dir,0.9)
//}
image_angle = direction
speed = 0
mask_index=mskPickupThroughWall;
move_contact_solid(direction,8)
mask_index=mskArmourStrike;
speed = 0
image_xscale = -point_distance(x,y,oldx,oldy)/2

ammo -= 1

if !place_free(x,y)
{
//if ammo>4
ammo-=2;}

if ammo > 0
{
image_index += 0.4/ammo
with instance_create(x,y,ArmourStrike)
{
amountofenemies=other.amountofenemies;
Originalangle=other.Originalangle;
direction = other.direction
image_angle = direction
ammo = other.ammo
team = other.team
image_index = other.image_index

if ammo = 20 || ammo = 30 || ammo = 40 || ammo = 50 || ammo = 21 || ammo = 31 || ammo = 41 || ammo = 51 || ammo = 42 || ammo = 62 || ammo = 61 || ammo = 71 || ammo = 72 || ammo = 81 || ammo = 82 || ammo = 91 || ammo = 92
alarm[0]=1;
else
event_perform(ev_alarm,0)
//alarm[0]=1;
}
}
else
{

if amountofenemies>=16//is amount of enemies lower than or equal  previous amount - 8
	scrUnlockCSkin(16,"FOR KILLING 16 ENEMIES IN A ROW#USING ONE ARMOUR STRIKE",0);

with instance_create(x+lengthdir_x(image_xscale/2,image_angle),y+lengthdir_y(image_xscale/2,image_angle),ArmourStrikeHit)
{
image_angle=other.image_angle;
image_yscale=other.image_yscale;
}
}

