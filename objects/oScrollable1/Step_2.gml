/// @description Insert description here
// You can write your code in this editor
scrollY += dragData;
dragData *= 0.9;


if(scrollY > scrollTop){
	scrollY = lerp(scrollY, scrollTop, 0.01);
}
else if(scrollY < -scrollBottom){
	scrollY = lerp(scrollY, -scrollBottom, 0.005);
}