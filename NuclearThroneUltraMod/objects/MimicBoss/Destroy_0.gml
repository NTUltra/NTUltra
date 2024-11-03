if instance_exists(Player)
{
	if Player.skill_got[Player.maxskill + 1]
	{
		with MimicBossPlateau
		{
			alarm[1] = 2;	
		}
	}
	if Player.my_health < Player.maxhealth
	{
		scrDrop(100,0,false,0,5)//Only drops health
	}
	if Player.race == 15
		scrUnlockCSkin(15,"FOR KILLING ATOM AS ATOM",0);
}
scrDrop(100,0);
scrDrop(100,0);
scrBossKill();
event_inherited()
if instance_number(MimicBoss) < 2
{
	scrEndBossMusic();
	with MimicBossPlateau
	{
		event_user(2);	
	}
}
if instance_number(MimicBoss) < 2
	with DelayVoidCreation
	{
		event_user(0);	
	}
if myMimicFriend != noone
{
	with myMimicFriend
	{
		tellTime -= 1;
		actTime /= 1.5; 	
	}
}