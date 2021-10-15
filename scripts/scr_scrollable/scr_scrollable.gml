// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_scrollable_set_First_Item_Position(object_scrollable , FirstItemPosition){
	object_scrollable.scrollTop = FirstItemPosition ;
}

function scr_scrollable_set_Last_Item_Position(object_scrollable , LastItemPosition){
	if(object_scrollable.scrollBottom == noone){
		object_scrollable.scrollBottom = LastItemPosition - window_get_height() ;
	}
	
}

function scr_scrollable_get_scroll_data(object_scrollable){
	return object_scrollable.scrollY ;
}