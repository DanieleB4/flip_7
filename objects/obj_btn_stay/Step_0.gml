/// @description Disappear if player draw a card
if(player_active().hasDrew) {
	sprite_index = spr_btn_next_player;
}
else {
	sprite_index = spr_btn_stay;
}
