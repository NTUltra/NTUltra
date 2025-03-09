/// @description Init almost creditlike
event_inherited();
tutorial = [
	["",20],
	["YOU CAN NOW EQUIP#<w>MULTIPLE<w> <y>CROWNS<y>#AT THE SAME TIME!",170],
	["",15],
]
alarm[1] = alarm[0];
with Player
{
	alarm[3] = max(alarm[3],other.alarm[1]);	
}