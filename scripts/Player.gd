extends RigidBody

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_RigidBody_body_entered(body):
	var name = body.get_name()
	print('Egg-san hit', name)
	if(name == 'Floor'):
		# set var in GLOBAL
		self.queue_free()
		GLOBALS.win = false
		GLOBALS.lose = true
		print('you lose')
	pass # Replace with function body.
