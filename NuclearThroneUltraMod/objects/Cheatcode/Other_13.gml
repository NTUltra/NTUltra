/// @description secret 1
disableSecret1I++;
alarm[1] = sequenceDelay;
if (disableSecret1I) >= array_length(disableSecret1)
{
	disableSecret1I = 0;
	with UberCont
	{
		encrypted_data.secrets[0] = false;
		scrSaveEncrypted();
	}
}