extends RigidBody

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_RigidBody_body_entered(body):
	var name = body.get_name()
	if(name == 'Egg-san'):
		print('you WIN')
		if(get_parent().get_name() == 'Level-1'):
			GLOBALS.level_1_status = "WIN"
		if(get_parent().get_name() == 'Level-2'):
			GLOBALS.level_2_status = "WIN"
		if(get_parent().get_name() == 'Level-3'):
			GLOBALS.level_3_status = "WIN"
		if(get_parent().get_name() == 'Level-4'):
			GLOBALS.level_4_status = "WIN"
		if(get_parent().get_name() == 'Level-5'):
			GLOBALS.level_5_status = "WIN"
		GLOBALS.win = true
		GLOBALS.lose = false
	pass # Replace with function body.
