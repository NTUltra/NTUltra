event_inherited();
friction = 0.5

wallbounce = 0

if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 8

if Player.race=25
{
wallbounce = 10;

if Player.ultra_got[97] && !Player.altUltra
wallbounce+=4;
}

}
}

typ = 1
alarm[0]=1;
dmg = 1;
trailColour = make_colour_rgb(0,255,0);
//friction = 0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable
//thisBolt=instance_number(Bolt)+instance_number(ToxicBolt)+instance_number(Splinter);
xprev = x;
yprev = y;
hitEntities = [];