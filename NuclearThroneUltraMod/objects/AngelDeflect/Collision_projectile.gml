if team != other.team && instance_exists(Player)
{
if other.typ =1 && Player.speed>0 && random(5.2)<1
{
other.team = team
	with other
	{
		event_user(15);
		snd_play(sndRicochet,0.1,true);
		if instance_exists(enemy)
		{
			var n = instance_nearest(x,y,enemy)
			direction = point_direction(x,y,n.x,n.y);
		}
		else
			direction = point_direction(other.x,other.y,x,y)
		speed *= 1.5;
		image_angle = direction
		with instance_create(x,y,Deflect)
		{
			image_angle = other.direction
			sprite_index=sprGuardianDeflect;
		}
	}
if Player.area=100 && instance_exists(CrownGuardian)
{
	scrUnlockCSkin(18,"FOR REFLECTING A PROJECTILE#THAT IS REFLECTED BY A CROWN GUARDIAN#AS ANGEL",0);
}

}
if other.typ = 2 && Player.speed>0 && random(5.5)<1
{
with other
instance_destroy()
}
}

