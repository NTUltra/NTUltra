if (my_health <= 0)&&(object_index!=Sheep&&object_index!=ExplosiveSheep){
if instance_exists(Player){
if(place_meeting(x,y,Morph)) || Player.ultra_got[52]
    {
    MorphMe=true;
    instance_create(x,y,Sheep);
    //Unlock sheep
    scrUnlockCharacter(13,"FOR MORPHING AN ENEMY");}
else if(place_meeting(x,y,ExplosiveMorph))
    {
    MorphMe=true;
    instance_create(x,y,ExplosiveSheep);
    //Unlock sheep
    scrUnlockCharacter(13,"FOR MORPHING AN ENEMY");}
    else{MorphMe=false}
instance_destroy()}
}
var overlap = instance_place(x,y,enemy);
if overlap != noone
{
	if size <= overlap.size
	{
		var getmeout = point_direction(overlap.x,overlap.y,x,y);
		motion_add(getmeout,size)
		direction += 1;
	}
}
var overlap = instance_place(x,y,chestprop);
if overlap != noone
{
	var getmeout = point_direction(overlap.x,overlap.y,x,y);
	motion_add(getmeout,0.8)
	direction += 1;
}
var overlap = instance_place(x,y,prop);
if overlap != noone
{
	var getmeout = point_direction(overlap.x,overlap.y,x,y);
	motion_add(getmeout,0.6)
	walk ++;
	direction += 1;
}
//WKICK
if wkick!=false//variable_local_exists("wkick") = 1
{
if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1
}


//ANIMATE ME PLZ
if spr_chrg!=false//variable_local_exists("spr_chrg") = 1
{
if sprite_index != spr_hurt and sprite_index != spr_chrg
sprite_index = spr_idle
if sprite_index = spr_hurt or sprite_index = spr_chrg
{if image_index > 2
sprite_index = spr_idle}
}
else
{
if spr_fire!=false//variable_local_exists("spr_fire") = 1
{
if speed = 0
{if sprite_index != spr_hurt and sprite_index != spr_fire
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt and sprite_index != spr_fire
sprite_index = spr_walk}
if sprite_index = spr_hurt// or sprite_index = spr_fire
{if image_index > 2
sprite_index = spr_idle}
}
else
{
if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}
}

}

scrTarget();