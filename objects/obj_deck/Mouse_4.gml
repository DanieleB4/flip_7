/// @description Show random card - Debug

randomise();
var ind = irandom(array_length(cards) - 1);
var card = cards[ind];

instance_destroy(obj_card);

var display_card = instance_create_layer(x + irandom_range(-32, 32), y + 192, layer, obj_card);
with (display_card) {
	card_type = card.card_type;
	card_value = card.card_value;
	update = true;
}
