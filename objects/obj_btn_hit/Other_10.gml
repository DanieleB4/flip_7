/// @description Draw card
with(obj_deck) {
	event_perform(ev_other, ev_user0);
}

sprite_index = DECK_LENGTH > 0 ? spr_btn_hit : spr_btn_shuffle;
