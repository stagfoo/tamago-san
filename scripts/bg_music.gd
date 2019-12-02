extends AudioStreamPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
			
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(GLOBALS.bg_music_status):
		if(get_node(".").playing == true):
			get_node(".").stop()
		else: 
			pass
	else:
		if(get_node(".").playing != true):
			get_node(".").play()
		else: 
			pass
	pass
