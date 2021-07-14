/// @description Insert description here
// You can write your code in this editor


if(GameManager.Plant && !instance_exists(PlantTree)){
	PlantTree = instance_create_layer(x,y-10,"Trees",oSmallTree);
	PlantTree.soil = id;
}