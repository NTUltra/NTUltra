if my_health <= 0
{
instance_create(x,y,RadMaggotExplosion);
if canOpenMind && instance_exists(Player)
{
	scrChestOpenMindReload(Player);
}
}

repeat(4)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}
instance_create(x,y,ExploderExplo)
snd_play(sndEXPChest,0,true)

event_inherited()

