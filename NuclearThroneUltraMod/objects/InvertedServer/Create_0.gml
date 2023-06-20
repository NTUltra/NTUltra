maxhealth = 10
mySize = 1

spr_idle = sprInvertedServer
spr_hurt = sprInvertedServerHurt
spr_dead = sprInvertedServerDead


event_inherited()


snd_hurt = sndHitMetal

if random(10) < 1
{
maxhealth = 6
my_health = 6
spr_idle = sprInvertedTerminal
spr_hurt = sprInvertedTerminalHurt
spr_dead = sprInvertedTerminalDead

instance_change(Terminal,false)
}

