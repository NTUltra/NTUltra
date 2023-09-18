/// @description No ultra mod



// Inherit the parent event
event_inherited();
alarm[11] = 0;
alarm[1]=3;
wallbounce = 0
shotgunshouldered = false;
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
	shotgunshouldered = true;
	friction = 0.5
wallbounce = 8
alarm[1]+=3;

if Player.race=25
{
wallbounce = 10;
}
if Player.ultra_got[97] && !Player.altUltra
{
wallbounce+=4;
alarm[1]+=2;
}
}

}