/// @description Atom teleport delay
if hasTriedToTeleport && instance_exists(Player)
{
	hasTriedToTeleport = false;
	KeyCont.key_spec[Player.p] = 1	
}