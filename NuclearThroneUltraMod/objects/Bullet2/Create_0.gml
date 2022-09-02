event_inherited();
friction = 0.6
alarm[1]=4;
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
wallbounce = 9;
}
if Player.ultra_got[97] && !Player.altUltra
{
wallbounce+=5;
alarm[1]+=2;
}
}

}

typ = 1
ShotgunShouldersType();
dmg=3;

alarm[11] = 1;
