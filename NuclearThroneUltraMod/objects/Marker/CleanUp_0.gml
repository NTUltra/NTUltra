/// @description Remove accuracy buff
with Player {
	if (standartAccuracy > 0)
	{
		standartAccuracy /= other.accuracyBuff;
		accuracy = standartAccuracy;
		pSpeedBoost -= other.speedBoost;
	}
}
with PlayerSpawn {
	if accuracy > 0
	{
		accuracy /= other.accuracyBuff;
		pSpeedBoost -= other.speedBoost;
	}
}