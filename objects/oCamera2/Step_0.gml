//Camera Update

//Destination update
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

//Object Position Update
x = x + (round(xTo - x) / 15);
y = y + (round(yTo - y) / 15);

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

//Camera View Update
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);