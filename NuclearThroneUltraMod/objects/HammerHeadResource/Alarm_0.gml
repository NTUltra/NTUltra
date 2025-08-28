/// @description Drop and destroy
instance_destroy();
if topindex < 4
{
	scrRaddrop(14);
} else if topindex < 7
{
	if topindex == 6
		scrDrop(200,0,false,0,100);
	else if topindex == 5
		scrDrop(200,0,true);
	else
		scrDrop(200,0);
}
else
{
	scrDrop(0,100);
}