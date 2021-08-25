/// @description Draw

var pos_x = 12;
var pos_y = 12;

draw_sprite(sCollectTree, 0, pos_x, pos_y);
draw_text(pos_x+10,pos_y-10, string(CollectTrees));

draw_sprite(sFarmer, 0, pos_x, pos_y+20);
draw_text(pos_x+10,pos_y+10,string(Farmer));

draw_sprite(sCoin, 0, pos_x, pos_y+20*2);
draw_text(pos_x+10,pos_y+30, string(coins));
