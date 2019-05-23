///@desc event_register_script
///@arg event
///@arg id
///@arg script
///@arg arg1

with(event_manager){
	var ev = argument[0];
	var objID = argument[1];
	
	if(ds_map_exists(eventMap,ev)){
		//adding event to the event map
		var listener_list = ds_list_create();
		
		//Add the listerner info to the ventmap
		ds_map_add_list(eventMap, ev, listener_list);
	} else {
		var listener_list = eventMap[? ev];	
	}
	
	//adding listener info
	var listener_info;
	
	//add listener iD
	listener_info = objID;
	
	//addrb scripts and arguments
	var len = argument_count-2;
	
	var i = 0; 
	repeat(len){
		listener_info[i] = argument[i+2];
		i++;
	}
	
	//add listenrer info to the listerner list
	ds_list_add(listener_list, listener_info);
	
}



