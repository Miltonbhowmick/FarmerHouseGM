/// @description Go farmers

// @func go_farmers() to call farmers moved towards forest gate
go_farmers = function(){
	var _i = instance_number(oFarmer);
	var _space = 0;
	while(_i<3){
		instance_create_layer(inst_FarmerPosition.x-_space, inst_FarmerPosition.y,"Farmers",oFarmer);
		_i++;
		_space+=10;
	}
}