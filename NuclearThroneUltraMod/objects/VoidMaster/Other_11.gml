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
	else if keepTalking > 2
	{
		dialogueStep = 0;
		with TextHandler
		{
			text = "OH YOU WANT TO CHALLENGE ME?";
		}
		alarm[2] = 5;
	}
	else
	{
		keepTalking += 1;
		debug(keepTalking);
		with TextHandler
		{
			text = "TAKE ON A CHALLENGE IF YOU DARE";
		}
		alarm[2] = 5;
	}
}