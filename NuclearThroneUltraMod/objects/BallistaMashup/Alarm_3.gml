/// @description Deal damage
with instance_create(x,y,Flame)
{
	scrCopyWeaponMod(other);
	speed = other.speed*0.25;
	direction = other.direction-5;
	team = other.team;	
}
with instance_create(x,y,Flame)
{
	scrCopyWeaponMod(other);
	speed = other.speed*0.5;
	direction = other.direction;
	team = other.team;	
}
with instance_create(x,y,Flame)
{
	scrCopyWeaponMod(other);
	speed = other.speed*0.75;
	direction = other.direction+5;
	team = other.team;	
}
snd_play(sndMachinegun,0.1,true)
with instance_create(x,y,Bullet1)
{
	motion_add(other.image_angle+90,16)
	scrCopyWeaponMod(other);
	image_angle = direction
	if random(4)<1 
		norecycle=true;
}
with instance_create(x,y,Bullet1)
{
	motion_add(other.image_angle-90,16)
	scrCopyWeaponMod(other);
	image_angle = direction
	team = other.team
	if random(4)<1 
		norecycle=true;
}
image_xscale = max(1,point_distance(x,y,colX,colY)/36);
var hits = ds_list_create();
	var al = instance_place_list(x,y,hitme,hits,false)
	for (var i = 0; i < al; i++) {
		if hits[| i].team != team && !array_contains(hitEntities,hits[| i])
		{
			hitEntities[array_length(hitEntities)] = hits[| i];
			with hits[| i] {
				snd_play(snd_hurt, hurt_pitch_variation,true)
				my_health -= other.dmg;
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,6)
			}
		}
	}
ds_list_destroy(hits);
alarm[3] = 1;
image_xscale = 1;

if collision_line(colX,colY,
x + lengthdir_x(24,direction),
y + lengthdir_y(24,direction),
Wall,false,false)
{
	speed = 0;
	alarm[2] = 5;
	move_contact_solid(direction,16);
	
	snd_play(sndPlasmaHit,0.1,true)
	with instance_create(x,y,PlasmaImpact)
		scrCopyWeaponMod(other);
	alarm[3] = 0;
}
colX = x;
colY = y;