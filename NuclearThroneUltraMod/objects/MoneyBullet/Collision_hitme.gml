if other.team != team and other.my_health > 0 && speed > 3
{
move_bounce_solid(false);
speed*=0.5;
with other
{
    if sprite_index!=spr_hurt
    {
	if instance_exists(Player){
    if Player.ultra_got[28]//roids ultra d
    {other.dmg += 1}}
    DealDamage(other.dmg)
    sprite_index = spr_hurt
    image_index = 0
    }
motion_add(other.direction,8)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
instance_create(x,y,BulletHit)

scrRecycleGland(1);

}



