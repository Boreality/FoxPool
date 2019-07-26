
var script_length = ds_grid_height(convo);


//progressing the script


if(i_<script_length){
	if(advance_check){
		temp_text = ds_grid_get(convo,1,i_);
		
		with(ds_grid_get(convo,0,i_)){
			make_text_custom(string(other.temp_text));	
		}	
		#region//deleting the textboxes of anyone other than mae, since shes the parent.
		if(ds_grid_get(convo,0,i_) == obj_mae) 
		{
			for(var i=0;i<ds_list_size(participants);i++){
				if(ds_list_find_value(participants,i) != obj_mae){
					with(ds_list_find_value(participants,i)){
						if(instance_exists(textbox)) instance_destroy(textbox);
						textbox=noone;
					}
				}
			}	
		}
		#endregion
		advance_check=false;
	}
	if(global.advance_dialogue){
		i_++; 
		advance_check = true;
	}

}
else{	//completed convo

	for(var i=0;i<ds_list_size(participants);i++){
		with(ds_list_find_value(participants,i)) my_state = state.idle;
	}
	
	show_message("Finsihed Conversation");
	ds_grid_destroy(convo);
	ds_list_destroy(participants);
	instance_destroy();
	
}












