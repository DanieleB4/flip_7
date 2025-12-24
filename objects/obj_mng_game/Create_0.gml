/// @description Variables
global.player_list = [];
global.player_turn = 0;

global.discards = [];
instance_create_layer((room_width - sprite_get_width(spr_deck)) / 2, 128, layer, obj_deck);

//load players
if(global.player_number < global.player_number_ai) {
	show_debug_message("Number of AI players {0} is greater then the total number of players {1}", global.player_number_ai, global.player_number);
	game_end();
}
for(var i = 0; i < global.player_number; i++) {
	var player = instance_create_layer(0, 0, layer, obj_player);
	var type = (i < global.player_number_ai) ? 1 : 0;
	with(player) {
		playerr_type = type;
		playerr_id = i;
	}
	array_push(global.player_list, player);
}
global.player_list = array_shuffle(global.player_list);

///give each player a card
for(var i = 0; i < global.player_number; i++) {
	with(global.player_list[i]) {
		draw_card(global.deck, global.player_list[i].hand);
	}
}
