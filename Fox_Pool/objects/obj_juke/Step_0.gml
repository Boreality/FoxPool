/// @description Insert description here
// You can write your code in this editor
if(alt_action){
	audio_stop_sound(track[song_counter]);
	song_counter++;
	if(song_counter>=array_length_1d(track)) song_counter=0;
	//play next song on counter
	audio_play_sound(track[song_counter],2,true);
	alt_action=false;
}