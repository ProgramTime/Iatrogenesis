if (hp <= 0) {
	instance_create_layer(x, y, layer, oWolf_Dead);
	instance_destroy();
}