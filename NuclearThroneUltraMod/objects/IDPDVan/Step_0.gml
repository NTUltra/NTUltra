event_inherited()





if speed>maxSpeed
speed=maxSpeed;


if speed<0.8 && idle
{
	idle=false;
if team != 2
	team = 0;
image_index=0;
snd_play(sndVanOpen);
meleedamage=0;
friction = 8;
}
/*
if (team == 0)
{
	if speed>4
		speed=4;	
}*/
var overlap = ds_list_create();
var al = instance_place_list(x,y,enemy,overlap,false)
for (var i = 0; i < al; i++) {
	with overlap[| i]
	{
		if other.mySize <= mySize && !ignoreOverlap
		{
			motion_add(other.myMovementDirection + 180,3);
			if other.object_index == IDPDVan
			{
				if y < y
					vspeed -= 1;
				else
					vspeed += 1;	
			}
			else
			{
				if x < x
					hspeed -= 1;
				else
					hspeed += 1;
				
			}
			walk += 1;
		}
	}
}