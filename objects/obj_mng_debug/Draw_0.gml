/// @description Draw debug
draw_text(32, 32, string("Deck size: {0}", DECK_LENGTH));
draw_text(32, 48, string("Active player: {0}", player_active().playerr_id));
draw_text(32, 64, string("Next player: {0}", player_next().playerr_id));

var pla = [];
for(var i = 0; i < global.player_number; i++) {
	array_push(pla, global.player_list[i].playerr_id);
}
draw_text(32, 80, string("Player list: {0}", pla));
