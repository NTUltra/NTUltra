if other.team != team and other.my_health > 0
{

BackCont.shake += 2
image_xscale-=0.1;
image_yscale-=0.1;
with other
{
if sprite_index!=spr_hurt
{
    if instance_exists(Player){
    if Player.skill_got[17] = 1
my_health -= 0.5
else
my_health -= 1
    
    }
my_health -= 0.5//other.dmg
sprite_index = spr_hurt
snd_play(snd_hurt, hurt_pitch_variation)
image_index = 0
}
motion_add(other.direction,4)
}

}

