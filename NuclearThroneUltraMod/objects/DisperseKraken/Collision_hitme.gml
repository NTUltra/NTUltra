if other.team != team and other.my_health > 0
{//instance_destroy()
	alarm[0] += 1;
with other
{
    if UberCont.normalGameSpeed == 60
		DealDamage(other.dmg*0.5,true);
	else
		DealDamage(other.dmg,true);
    sprite_index = spr_hurt
    image_index = 0
    motion_add(other.direction,2)
    snd_play(snd_hurt, hurt_pitch_variation)

}

/*
//RECYCLE GLAND
if instance_exists(Player){
if Player.skill_got[16] = 1 and random(3) < 2 +Player.betterrecyclegland
{
if !(Player.ammo[1] >= Player.typ_amax[1])
{
Player.ammo[1] += 2
dir = instance_create(x,y,PopupText)
dir.mytext = "+2"
dir.alarm[1]=5;
dir.time=5;
}

}}*/

}



/* */
/*  */
