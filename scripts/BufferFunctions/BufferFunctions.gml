// @func SaveString(save_data, [file.json, file.save]
function SaveString(_string,_filename){
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _filename);
	buffer_delete(_buffer);
}
// @func LoadString([file.json, file.save]
function LoadString(_filename){
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer, buffer_string);
	
	buffer_delete(_buffer);
	return _string;
}