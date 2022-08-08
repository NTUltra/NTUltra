if size >= other.size-1 and speed > 2 and other.sprite_index != other.spr_hurt && other.existTime > 30
{
with other
{
    if instance_exists(Player)
    {
        if Player.race==24 
        {
        my_health -= round(1+other.speed/10)*2;
        
        if Player.ultra_got[94]//elementor coldheart
        {
        my_health -= round(1+other.speed/10)*3;
        motion_add(other.direction,other.speed/4)//lets add a little more knockback why not
        
        if alarm[11]<1&&my_health>0{
        frozen=true;
            with instance_create(x,y,FrozenEnemy)
            {
				var s = min(2,other.size)
				image_xscale=s*choose(1,-1);
				image_yscale=s;
	            xx=other.x
	            yy=other.y
	            debrisAmount=choose(1,2);
				owner=other.id;
            }
        alarm[11]+=16;
		if alarm[1] > 0
				alarm[1] += 6;
        }
        
        }
        else
        my_health -= round(1+other.speed/10);
        
        }
        else//regular
        my_health -= round(1+other.speed/10);
    }
    else//no playa
    my_health -= round(1+other.speed/10)

sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,other.speed/2)
}
if instance_exists(Player)
{
if Player.ultra_got[93]
{
speed/=1.4;
}
else//player not viking thronebutt
speed /= 2;
}
else//no player
speed /= 2;
}

