if (my_health <= 0){
	instance_destroy()
}
if !ignoreOverlap
{
	var overlap = instance_place(x,y,enemy);
	if overlap != noone
	{
		if meleedamage > 0 && team != overlap.team && overlap.sprite_index != overlap.spr_hurt && object_index != Player
		{
			with overlap
			{
				sprite_index = spr_hurt;
				image_index = 0;
				DealDamage(other.meleedamage);
				snd_play(snd_hurt, hurt_pitch_variation);	
			}
			snd_play(snd_melee);
		}
		if mySize <= overlap.mySize && !overlap.ignoreOverlap
		{
			var getmeout = point_direction(overlap.x,overlap.y,x,y);
			motion_add(getmeout,mySize)
			direction += 1;
			walk += 1;
		}
	}
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