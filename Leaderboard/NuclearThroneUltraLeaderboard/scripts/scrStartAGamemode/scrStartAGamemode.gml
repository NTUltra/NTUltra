///xxx();
// /@description
///@param
function scrStartAGamemode(socket,sendBuffer, seed, gamemode, option){
	show_debug_message("STARTIONG");
	show_debug_message(gamemode);
	buffer_write(sendBuffer,buffer_u16,seed);
	buffer_write(sendBuffer,buffer_u8,gamemode[0]);
	buffer_write(sendBuffer,buffer_u8,gamemode[1]);
	buffer_write(sendBuffer,buffer_u8,gamemode[2]);
		if (array_contains(gamemode, 1) || array_contains(gamemode, 46))//One weapon only
		{
			buffer_write(sendBuffer,buffer_u16,option[0]);
		}
		if (array_contains(gamemode, 19))//Disc room
		{
			buffer_write(sendBuffer,buffer_u16,option[0]);
			buffer_write(sendBuffer,buffer_u8,option[1]);
		}
}