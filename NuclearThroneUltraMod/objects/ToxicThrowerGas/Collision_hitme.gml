
//its an enemy
if other.team != team && other.team !=2
{
    with other
    {
	    if sprite_index != spr_hurt
	    {
		    with other
				instance_destroy()
		    snd_play(snd_hurt, hurt_pitch_variation)
		    DealDamage(other.dmg)
		    sprite_index = spr_hurt
		    image_index = 0
		    BackCont.shake += 1
			if (instance_exists(Player) && Player.skill_got[43] && Player.ultra_got[97] && !Player.altUltra && team != 0)
				{
					scrMoodSwingStun(1, 0);
					scrMoodSwingLightningArc(22,other.x,other.y,2,max(1,other.dmg - 1));
					scrMoodSwingIcicle(1, id);
				}
	    }
		else
		{
			scrIframeSkipper(0.025);
		}
    }
}//player got hit
else if image_xscale>0.22 && alarm[11] < 1
{
	if other.team == 2 && other.team != team
	{
	    with other
	    {
		    if sprite_index != spr_hurt
		    {
			    with other
					instance_destroy()
			    snd_play(snd_hurt, hurt_pitch_variation)
			    DealDamage(2);
			    sprite_index = spr_hurt
			    image_index = 0
			    Sleep(10);
			    BackCont.shake += 1
				if object_index == Player {
					hitBy = other.sprite_index;	
				}
		    }
	    }
	}
	else if other.team == team
	{
		with other
		{
			if object_index == Player && race == 23 && (ultra_got[92] && !altUltra)
			{
				if my_health < maxhealth + 2 && !outOfCombat
				{
					var n = instance_nearest(x,y,enemy)
					if  n != noone && point_distance(x,y,n.x,n.y) < 250 && (!instance_exists(Wall) || !collision_line(x,y,n.x,n.y,Wall,false,false))
					{
						toxicConsume += other.consumeAmount;
						if toxicConsume > 50
						{	
							toxicConsume = 0;
							my_health ++;
							with instance_create(x,y-16,HealFX)
							{
								depth = other.depth - 2;
								sprite_index=sprFrogHeal;
							}
							snd_play(sndBloodlustProc);
						}
						with  other
						{
							instance_create(x,y,Smoke);
							instance_destroy();
						}
					}
				}
			}
		}
	}
} 