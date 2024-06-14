raddrop = 0
maxhealth = 20
mySize = 1

event_inherited()
meleedamage = 5

spr_idle = sprInvertedGoldTeaPotNuke
spr_walk = sprInvertedGoldTeaPotNuke
spr_hurt = sprInvertedGoldTeaPotNukeHurt
spr_dead = sprScrapBossMissileDead


scrTarget()
ang = 0;
alarm[0] = 10;
scrAddDrops(1);