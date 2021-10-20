

function scr_scrollable_set_First_Item_Position1(object_scrollable , FirstItemPosition){
	object_scrollable.scrollTop = FirstItemPosition ;
}

function scr_scrollable_set_Last_Item_Position1(object_scrollable , LastItemPosition){
	if(object_scrollable.scrollBottom == noone){
		object_scrollable.scrollBottom = LastItemPosition - window_get_height() ;
	}
	
}

function scr_scrollable_get_scroll_data1(object_scrollable){
	return object_scrollable.scrollY ;
}
