motion_add(point_direction(other.x,other.y,x,y),other.mySize*0.5)
if !instance_exists(Player){instance_destroy();exit;}
if Player.skill_got[8] = 1//Dealing the damage with gamma guts
{
with other
    {
    DealDamage(7)//dmg dealt by gamma guts
    sprite_index = spr_hurt
    image_index = 0
    motion_add(point_direction(other.x,other.y,x,y),3)
    }
    
}

//}
//alarm[0]=2;


