///@desc event_unregister
///@arg event
///@arg id

with(event_manager){
	var ev = argument[0];
	var objID = argument[1];
	
	//get listeners
	if(ds_map_exists(eventMap, ev)){
		var listener_list = eventMap[? ev];
		var len = ds_list_size(listener_list);
		
		var i=0
		repeat(len){
			var listener_info = listener_list[| i];
			if(listener_info[0] == objID){
				if(len == 1){
					ds_list_destroy(listener_list);
					ds_map_delete(eventMap,ev);
				}else ds_list_delete(listener_list, i);
				break;
			}
			i++;
		}
	}
	
	
}