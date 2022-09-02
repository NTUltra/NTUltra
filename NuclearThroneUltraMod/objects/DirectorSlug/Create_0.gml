event_inherited();
friction = 0.68;

image_speed=0.3;

wallbounce = 0
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 4
if Player.race=25
{
wallbounce = 5;

if Player.ultra_got[97] && !Player.altUltra
wallbounce+=5;
}
}
}
typ = 1 
ShotgunShouldersType();
turned=false;

alarm[0]=2;

