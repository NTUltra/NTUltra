scrDrop(50,1)
scrDrop(30,0)
scrDrop(30,0)
speed = 0;
my_health = 0;
event_inherited()

//GAMEMODE UNLOCKABLE NO ELITE POPO
scrUnlockGameMode(18,"FOR DESTROYING A VAN");

snd_play(sndExplosionL)
repeat(3)
{
with instance_create(x+lengthdir_x(8,ang),y+lengthdir_y(8,ang),PopoExplosion)
{
	if team == 2
		sprite_index =sprPopoExploRogue;	
}
ang+=360/3;
}

with Hand
{
	if target == other.id || place_meeting(x,y,other.id) || point_distance(x,y,other.x,other.y) < 128
	{
		UberCont.vansSlapped ++;
		if UberCont.vansSlapped == 3
		{
			scrUnlockCSkin(27,"FOR WALLOPING#THREE VANS#IN A SINGLE RUN",0);
		}
	}
}
