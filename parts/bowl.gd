extends RigidBody
	
func setLevelStatus(name,status):
	if(get_parent().get_name() == name):
		GLOBALS.level_1_status = status
	pass

func _on_RigidBody_body_entered(body):
	var name = body.get_name()
	if(name == 'Egg-san'):
		setLevelStatus('Level-1', "WIN")
		setLevelStatus('Level-2', "WIN")
		setLevelStatus('Level-3', "WIN")
		setLevelStatus('Level-4', "WIN")
		setLevelStatus('Level-5', "WIN")
		setLevelStatus('Level-6', "WIN")
		setLevelStatus('Level-7', "WIN")
		setLevelStatus('Level-8', "WIN")
		setLevelStatus('Level-9', "WIN")
		setLevelStatus('Level-10', "WIN")
		GLOBALS.win = true
		GLOBALS.lose = false
	pass # Replace with function body.
	

