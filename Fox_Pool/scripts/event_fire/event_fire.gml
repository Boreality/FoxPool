///@desc event_fire
///@arg event

with(event_manager){
	var ev = argument[0];
	
	//check if there is an event entry
	if(ds_map_exists(eventMap,ev)){
		//get listeners
		var listener_list = eventMap[? ev];
		
		var len = ds_list_size(listener_list);
		
		var listener_info, listener, script, args;
		
		var i=0;
		repeat(len){
			listener_info = listener_list[| i];
			listener = listener_info[0];
			script = listener_info[1];
			
			var lenArgs = array_length_1d(listener_info)-2;
			var unregister = false;
			
			if(lenArgs <= 0){
				if(instance_exists(listener)){
					with(listener) unregister = script_execute(script);	
				} else unregister = true;
			}else{
				if(instance_exists(listener)){
					args = array_create(lenArgs, 0);
					array_copy(args,0,listener_info,2,lenArgs);
					with(listener) unregister = script_execute_ext(script, args);
				} else unregister = true;
			}
			
			if(unregister){
				event_unregister(ev,listener);	
				i--;
			}
			i++;
		}
	}
}


