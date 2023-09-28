event_inherited();
friction = 0.6

dmg = 9;
alarm[1]=4;
wallbounce = 5
shotgunshouldered = false;
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
	friction = 0.5;
	shotgunshouldered = true;
wallbounce = 14
alarm[1]+=3;
friction = 0.5
if Player.race=25
{
wallbounce = 15;

if Player.ultra_got[97] && !Player.altUltra
{
wallbounce+=5;
friction = 0.4;
}
}
}

}

typ = 1
ShotgunShouldersType();
alarm[11] = 1;