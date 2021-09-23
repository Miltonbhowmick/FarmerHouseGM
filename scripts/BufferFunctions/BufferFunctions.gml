
function SaveString(_string,_filename){
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, filename);
	buffer_delete(_buffer);
}

function LoadString(_filename){
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer, buffer_string);
	
	buffer_delete(_buffer);
	return _string;
}