extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_input_event(camera, event, click_position, click_normal, shape_idx):
	if(event.is_pressed()):
		get_node(".").queue_free()
	pass # Replace with function body.
