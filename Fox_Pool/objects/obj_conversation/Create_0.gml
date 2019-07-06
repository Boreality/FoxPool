

enum c{
	gregg,
	mae,
	angus,
	bea

}

convo = ds_grid_create(0,0);
convo = csv_to_grid("FIlename");
participants = ds_list_create();


//Getting participants
participants[0] = convo[0,0];
var found = -4;
for(var i=0;i<ds_grid_height(convo);i++){ //Go through every y line
	for(var j=0;j<ds_grid_width(convo);j++){ //Go through every item in y line

		//if the current item is not the the current list of participants, add to them		
		for(var k=0;k<=ds_list_size(participants);k++){
			if(ds_grid_get(current,j,i) != ds_list_find_value(participants,k)){
				found = ds_grid_get(current,j,i);
			}else{
				found = -4;
			}
		} 	
		if(found != -4){ //if found something new and unique
			partitipants[k+1] = found;
		}
	}
}

//Making Participants Available for conversation
/*	This means
		-Unlisting them as listeners for quips
		-Setting them to a state in a finite state machine that does the above
*/
for(var i=0;i<ds_list_size(participants);i++){
	with(ds_list_find_value(participants,i)) my_state = state.conversation;

}