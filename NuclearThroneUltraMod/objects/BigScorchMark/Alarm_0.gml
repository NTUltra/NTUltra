if popo==true
{

    repeat( irandom(2) )
    {with instance_create(x+random(26)-13,y+random(26)-13,PopoFlames)
		depth = other.depth - 1;}
    
    
}
else
{

    repeat( irandom(2) )
    {with instance_create(x+random(26)-13,y+random(26)-13,Flames)
		depth = other.depth - 1;}

}

