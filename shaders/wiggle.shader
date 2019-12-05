shader_type canvas_item;

void vertex() {
	VERTEX.x += cos(TIME + VERTEX.x + VERTEX.y) * 6.0;
	VERTEX.y += cos(TIME + VERTEX.y + VERTEX.x) * 6.0;
}