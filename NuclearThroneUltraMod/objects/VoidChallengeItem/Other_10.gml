/// @description Start the challenge run
event_inherited();
with UberCont
{
	voidChallengeGoing[other.item_index] = true;
}
event_user(1);