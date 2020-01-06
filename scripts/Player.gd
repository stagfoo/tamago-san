extends RigidBody

var currentFace = "default"
var time = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func reset_faces():
	get_node("face").get_child(0).visible = false
	get_node("face").get_child(1).visible = false
	get_node("face").get_child(2).visible = false
	get_node("face").get_child(3).visible = false
	pass

func setLevelStatus(name,status):
	if(get_parent().get_name() == name):
		if(name == 'Level-1'):
			GLOBALS.level_1_status = status
		if(name == 'Level-2'):
			GLOBALS.level_2_status = status
		if(name == 'Level-3'):
			GLOBALS.level_3_status = status
		if(name == 'Level-4'):
			GLOBALS.level_4_status = status			
		if(name == 'Level-5'):
			GLOBALS.level_5_status = status
		if(name == 'Level-6'):
			GLOBALS.level_6_status = status	
		if(name == 'Level-7'):
			GLOBALS.level_7_status = status
		if(name == 'Level-8'):
			GLOBALS.level_8_status = status	
		if(name == 'Level-9'):
			GLOBALS.level_9_status = status	
		if(name == 'Level-10'):
			GLOBALS.level_10_status = status	
	pass

func _on_RigidBody_body_entered(body):
	var name = body.get_name()
	reset_faces()
	if(time == 0):
		var faces = get_node("face").get_children()	
		faces.shuffle()
		faces[0].visible = true
		time = 1
	else:
		get_node("face/default").visible = true
		time = 0
	if(name == 'table'):
		# set var in GLOBAL
		self.queue_free()
		GLOBALS.win = false
		GLOBALS.lose = true
		setLevelStatus('Level-1', "LOSE")
		setLevelStatus('Level-2', "LOSE")
		setLevelStatus('Level-3', "LOSE")
		setLevelStatus('Level-4', "LOSE")
		setLevelStatus('Level-5', "LOSE")
		setLevelStatus('Level-6', "LOSE")
		setLevelStatus('Level-7', "LOSE")
		setLevelStatus('Level-8', "LOSE")
		setLevelStatus('Level-9', "LOSE")
		setLevelStatus('Level-10', "LOSE")
	pass # Replace with function body.
