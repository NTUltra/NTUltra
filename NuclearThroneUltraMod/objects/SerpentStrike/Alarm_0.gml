var aimDir = image_angle
target = instance_nearest(x,y,enemy);// nearest in direction of cursor

BackCont.shake += 0.5;



var oldx, oldy;
oldx = x
oldy = y
aimDir += (sin(ammo*0.1)*2);
if ammo < 160 && instance_exists(target)
{
	var dif = angle_difference(point_direction(x,y,target.x,target.y), image_angle);
	if (point_distance(x,y,target.x,target.y) < 96 && abs(dif) < 32)
    {
		aimDir += dif*0.5;
    }
	else
	{
		aimDir += dif * 0.002;
	}
}
aimDir += angle_difference(originalAngle,aimDir)*0.01;
var walls = ds_list_create();
	var al = instance_place_list(x,y,Wall,walls,false)
	for (var i = 0; i < al; i++) {
		with instance_create(walls[| i].x,walls[| i].y,FloorExplo)
			canSpawnSwarm = true;
		instance_destroy(walls[| i]);
	}
	ds_list_clear(walls);
	var al = instance_place_list(x,y,TopDecal,walls,false)
	for (var i = 0; i < al; i++) {
		instance_destroy(walls[| i]);
	}
	ds_list_clear(walls);
	var al = instance_place_list(x,y,Bones,walls,false)
	for (var i = 0; i < al; i++) {
		instance_destroy(walls[| i]);
	}
ds_list_destroy(walls);

direction = aimDir;
image_angle = direction
x += lengthdir_x(2,direction);
y += lengthdir_y(2,direction);
speed = 0
image_xscale = point_distance(x,y,oldx,oldy)*0.5;

ammo -= 1

if ammo > 0
{
	//image_index += 0.4/ammo
	with instance_create(x,y,SerpentStrike)
	{
		originalAngle = other.originalAngle;
		dmg = other.dmg;
		sprite_index = other.sprite_index;
		sprHead = other.sprHead;
		flipped = other.flipped;
		myHead = other.myHead;
		ammo = other.ammo;
		amountofenemies = other.amountofenemies;
		direction = other.direction;
		image_angle = direction
		team = other.team
		if ammo % 3 == 0
			image_index = 1;
		currentFrameAmount = other.currentFrameAmount - 1;
		if currentFrameAmount > 0
		{
			event_perform(ev_alarm,0);
		}
		else
		{
			currentFrameAmount = perFrame;
			alarm[0] = 1;
		}
	}
}
else
{

	if amountofenemies>=16//is amount of enemies lower than or equal  previous amount - 8
		scrUnlockCSkin(16,"FOR KILLING 16 ENEMIES IN A ROW#USING ONE ARMOUR STRIKE",0);

}

