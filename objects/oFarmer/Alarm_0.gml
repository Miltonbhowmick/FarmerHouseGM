instance_destroy(inst_large_tree);

inst_large_tree = instance_nearest(x,y,oLargeTree);	
if(instance_exists(inst_large_tree ))
	inst_large_tree.OccupiedFarmer = id;
	