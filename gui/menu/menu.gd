extends ItemList

onready var START_BUTTON = get_node("Start Game")
onready var END_BUTTON =  get_node("End Game")

func _ready():
	pass

func _process(delta):
	pass
func _on_Button_pressed():
	if(START_BUTTON.pressed):
		GLOBALS.lose = false
		GLOBALS.win = false
		GLOBALS.goto_scene("res://levels/Level-1.tscn")
		return
	if(END_BUTTON.pressed):
		GLOBALS.lose = false
		GLOBALS.win = false
		GLOBALS.goto_scene("res://Root.tscn")
		#get_tree().quit()
		return
	pass
