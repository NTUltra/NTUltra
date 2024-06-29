if sprite_index=sprVanOpen
{
	spr_idle=sprVanOpenIdle;
	spr_walk=sprVanOpenIdle;
	spr_hurt=sprVanDeactivatedHurt;
	sprite_index=sprVanOpenIdle;
	image_index=0;
	if instance_exists(Player) && Player.area != 100 && !scrIsGamemode(25) && !UberCont.triedToGoHQThisLoop && Player.loops > 0
		instance_create(x - (32*right),y,HQEnterance);
}
if sprite_index=sprFreakVanOpen
{
	spr_idle=sprFreakVanOpenIdle;
	spr_walk=sprFreakVanOpenIdle;
	spr_hurt=sprFreakVanDeactivatedHurt;
	sprite_index=sprFreakVanOpenIdle;
	image_index=0;
}
if sprite_index=sprRogueVanOpen
{
spr_idle=sprRogueVanOpenIdle;
spr_walk=sprRogueVanOpenIdle;
spr_hurt=sprRogueVanDeactivatedHurt;
sprite_index=sprRogueVanOpenIdle;
image_index=0;
}

if sprite_index=sprVanOpenIdle 
{
	spr_idle=sprVanDeactivate;
	spr_walk=sprVanDeactivate;
	spr_hurt=sprVanDeactivatedHurt;
	sprite_index=sprVanDeactivate;
	image_index=0;
}
if sprite_index=sprFreakVanOpenIdle 
{
spr_idle=sprFreakVanDeactivate;
spr_walk=sprFreakVanDeactivate;
spr_hurt=sprFreakVanDeactivatedHurt;
sprite_index=sprFreakVanDeactivate;
image_index=0;
}
if sprite_index=sprRogueVanOpenIdle
{
spr_idle=sprRogueVanDeactivate;
spr_walk=sprRogueVanDeactivate;
spr_hurt=sprRogueVanDeactivatedHurt;
sprite_index=sprRogueVanDeactivate;
image_index=0;
}

if sprite_index=sprVanDeactivate 
{
spr_idle=sprVanDeactivated;
spr_walk=sprVanDeactivated;
spr_hurt=sprVanDeactivatedHurt;
sprite_index=sprVanDeactivated;
image_index=0;
}
if sprite_index=sprFreakVanDeactivate 
{
spr_idle=sprFreakVanDeactivated;
spr_walk=sprFreakVanDeactivated;
spr_hurt=sprFreakVanDeactivatedHurt;
sprite_index=sprFreakVanDeactivated;
image_index=0;
}
if sprite_index=sprRogueVanDeactivate
{
spr_idle=sprRogueVanDeactivated;
spr_walk=sprRogueVanDeactivated;
spr_hurt=sprRogueVanDeactivatedHurt;
sprite_index=sprRogueVanDeactivated;
image_index=0;
}

