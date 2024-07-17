/// @description Drop and destroy
instance_destroy();
if topindex < 4
{
	scrRaddrop(14);
} else if topindex < 7
{
	scrDrop(200,0);
}
else
{
	scrDrop(0,100);
}