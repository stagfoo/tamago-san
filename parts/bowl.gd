extends RigidBody

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_RigidBody_body_entered(body):
	var name = body.get_name()
	print(name, "hit the bowl")
	if(name == 'Egg-san'):
		print('you WIN')
		GLOBALS.win = true
		GLOBALS.lose = false
	pass # Replace with function body.
