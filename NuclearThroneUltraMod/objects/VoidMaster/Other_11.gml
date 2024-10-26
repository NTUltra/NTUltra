/// @description Starting a conversation
if introSpiel
{
	with TextHandler
	{
		text = "ANOTHER ONE OF YOU MUTATED RATS";
	}
	alarm[2] = 5;
}
else
{
	if completedChallenge
	{
		with TextHandler
		{
			text = "LOOKS LIKE YOU HAVE COMPLETED YOUR CHALLENGE";
		}
		alarm[2] = 5;
	}
	else if keepTalking > 1 && !instance_exists(RegalNavigation)
	{
		dialogueStep = 0;
		keepTalking += 1;
		with TextHandler
		{
			text = "OH YOU WANT TO CHALLENGE ME?";
		}
		alarm[2] = 5;
	}
	else if !instance_exists(RegalNavigation)
	{
		if !startedDuel
			keepTalking += 1;
		with TextHandler
		{
			text = "TAKE ON A CHALLENGE IF YOU DARE";
		}
		alarm[2] = 5;
	}
	else if instance_exists(RegalNavigation)
	{
		with TextHandler
		{
			text = "I HAVE NO CHALLENGES FOR YOU RIGHT NOW";
		}
		alarm[2] = 5;
	}
	else
	{
		with TextHandler
		{
			text = "";
		}
	}
}