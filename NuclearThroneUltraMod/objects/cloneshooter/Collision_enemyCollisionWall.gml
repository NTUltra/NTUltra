motion_add(point_direction(other.x,other.y,x,y),other.size*0.5)
if !instance_exists(Player){instance_destroy();exit;}
if Player.skill_got[8] = 1//Dealing the damage with gamma guts
{
with other
    {
    my_health -= 7//dmg dealt by gamma guts
    sprite_index = spr_hurt
    image_index = 0
    motion_add(point_direction(other.x,other.y,x,y),3)
    }
    
}
//if(alarm[0]<1){
if other.meleedamage > 0 and other.team != team//is it a melee enemy?
{
    if (Player.skill_got[8] = 1)&&(other.my_health<=0)//gamma guts immunity?
    {
    }
    else{
    //enemy deals damage to the player
    
    
        if sprite_index != spr_hurt
        {
        snd_play(other.snd_melee)
        sprite_index = spr_hurt
        image_index = 0
        snd_play(snd_hurt, hurt_pitch_variation)
        my_health -= other.meleedamage
        motion_add(point_direction(other.x,other.y,x,y),4)
        Sleep(100)
        }
    }
}

//}
//alarm[0]=2;


