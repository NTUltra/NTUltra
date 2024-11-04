/// @description Networking
var type = async_load[? "type"];
//Connection to server
debug("network async client");
if (type == network_type_data) {
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer, buffer_seek_start, 0);
	var data = buffer_read(buffer, buffer_u8);
	switch(data)
	{
		case NETDATA.CLIENT_ID:
		//SENDING SCORE
			scrSendScore(buffer);
			alarm[0] = 2;
		break;
	}
}