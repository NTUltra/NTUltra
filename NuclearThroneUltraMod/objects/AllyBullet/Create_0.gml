event_inherited();
typ = 2 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 3
if instance_exists(Player){
if Player.ultra_got[40]
	dmg=4;
if Player.ultra_got[28]//Roids ultra
	dmg += 2;
}
alarm[11] = 1;