/// @description Networking
var type = async_load[? "type"];
//Connection to server
debug("network async client");
if (type == network_type_data) {
	debug("WOW GOT A CONNECTION");
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer, buffer_seek_start, 0);
	var data = buffer_read(buffer, buffer_u8);
	debug("data received: ",data);
	switch(data)
	{
		case NETDATA.CLIENT_ID:
		//SENDING SCORE
			scrSendScore(buffer, true);
			alarm[0] = 2;
		break;
	}
}