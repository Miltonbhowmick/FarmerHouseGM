/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_line(240,70,455,70);

if(GameManager.loot_Text=="This is Yellow Color Dagger")
{
	draw_set_color(c_yellow);
}
if(GameManager.loot_Text=="This is Blue Color Dagger")
{
	draw_set_color(c_blue);
}
if(GameManager.loot_Text=="This is Purple Color Dagger")
{
	draw_set_color(c_purple);
}
if(GameManager.loot_Text=="This is Sky Blue Color Dagger")
{
	draw_set_color(c_navy);
}
if(GameManager.loot_Text=="This is Ash Color Dagger")
{
	draw_set_color(c_black);
}

draw_set_font(f2);
draw_text(240, 50, GameManager.loot_Text);
draw_set_font(fMenu);
draw_text(250, 95, GameManager.loot_Text2);