maxhealth = 10
mySize = 1

spr_idle = sprServer
spr_hurt = sprServerHurt
spr_dead = sprServerDead


event_inherited()


snd_hurt = sndHitMetal

if random(10) < 1
{
maxhealth = 6
my_health = 6
spr_idle = sprTerminal
spr_hurt = sprTerminalHurt
spr_dead = sprTerminalDead

instance_change(Terminal,false)
}

