
i_=0;
temp_text="";
advance_check=true;

enum c{
	gregg,
	mae,
	angus,
	bea,
	ryan

}
#region figuring out how big the grid needs to be before making the real thing
temp_convo= ds_grid_create(10,50);
temp_convo = csv_to_grid(filename);
var i=0;
var h=0;


repeat(50){
	if(is_undefined(ds_grid_get(temp_convo,0,i))) h++;
	i++;
}
h = (50-h);

ds_grid_destroy(temp_convo)
#endregion

convo = ds_grid_create(2,h);
convo = csv_to_grid(filename);
participants = ds_list_create();
ds_list_clear(participants);


#region//Getting participants from convo
ds_list_set(participants,0,ds_grid_get(convo,0,0));

for(var i=0;i<ds_grid_height(convo);i++){ //Go through every y line
	//if the current item is not the the current list of participants, add to them	
	//show_message(ds_list_size(participants));
	var k=0;
	repeat(ds_list_size(participants)){
		if(ds_grid_get(convo,0,i) != ds_list_find_value(participants,k)){
			ds_list_set(participants,k+1,ds_grid_get(convo,0,i))
		}
		k++;
	}
}
#endregion

#region//reconstructing participants from strings to variables
//partiticpants is a small list containing one instance of all different actors
i=0;
repeat(ds_list_size(participants)){
	switch(ds_list_find_value(participants,i)){
		case "obj_mae":
			ds_list_set(participants,i,obj_mae);
		break;
		case "obj_ryan":
		ds_list_set(participants,i,obj_ryan);
		break;
		case "obj_gregg":
		ds_list_set(participants,i,obj_gregg);
		break;
	}
	i++;	
}
#endregion

#region//reconstructing participants (in convo list) from strings to variables
i=0;
repeat(h){
	switch(ds_grid_get(convo,0,i) ){
		case "obj_mae":
			ds_grid_set(convo,0,i,obj_mae);
			
		break;
		case "obj_ryan":
			ds_grid_set(convo,0,i,obj_ryan);
			
		break;
		case "obj_gregg":
			ds_grid_set(convo,0,i,obj_gregg);
		break;
	}
	i++;	
}



#endregion

#region//Making Participants Available for conversation

for(var i=0;i<ds_list_size(participants);i++){
	with(ds_list_find_value(participants,i)) my_state = state.conversation;
}
#endregion