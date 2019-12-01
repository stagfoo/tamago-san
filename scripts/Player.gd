extends RigidBody

var currentFace = "default"
var time = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_RigidBody_body_entered(body):
	var name = body.get_name()
	if(time == 0):
		get_node("face").get_child(0).visible = false
		get_node("face").get_child(1).visible = false
		get_node("face").get_child(2).visible = false
		get_node("face").get_child(3).visible = false
		var faces = get_node("face").get_children()	
		faces.shuffle()
		faces[0].visible = true
		time = 1
	else:
		get_node("face").get_child(0).visible = false
		get_node("face").get_child(1).visible = false
		get_node("face").get_child(2).visible = false
		get_node("face").get_child(3).visible = false
		get_node("face/default").visible = true
		time = 0
	if(name == 'table'):
		# set var in GLOBAL
		self.queue_free()
		GLOBALS.win = false
		GLOBALS.lose = true
		print('you lose')
	pass # Replace with function body.
