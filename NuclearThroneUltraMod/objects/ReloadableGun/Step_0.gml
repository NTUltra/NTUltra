/// @description
var isHolding = false;
with owner
{
	if wep == other.wep || bwep == other.wep || cwep == other.wep
		isHolding = true;
}
if !isHolding
	instance_destroy();