// @func instance_nth_nearest(x, y, object_name, nth_nearest)
// credit of this scripts to https://www.gmlscripts.com/script/instance_nth_nearest
function instance_nth_nearest(){
    var pointx,pointy,object,n,list,nearest;
    pointx = argument0;
    pointy = argument1;
    object = argument2;
    n = argument3;
    n = min(max(1,n),instance_number(object));
    list = ds_priority_create();
    nearest = noone;
    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));		
    repeat (n) nearest = ds_priority_delete_min(list);
    ds_priority_destroy(list);
    return nearest;

}