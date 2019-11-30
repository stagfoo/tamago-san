extends ItemList

onready var LEVEL_1 = get_node("Level_1")
onready var LEVEL_2 = get_node("Level_2")
onready var LEVEL_3 = get_node("Level_3")
onready var END_BUTTON =  get_node("End Game")

func _ready():
	pass

func _process(delta):
	pass
func _on_Button_pressed():
	GLOBALS.lose = false
	GLOBALS.win = false
	if(LEVEL_1.pressed):
		GLOBALS.goto_scene("res://levels/Level-1.tscn")
		return
	if(LEVEL_2.pressed):
		GLOBALS.goto_scene("res://levels/Level-2.tscn")
		return
	if(LEVEL_3.pressed):
		GLOBALS.goto_scene("res://levels/Level-3.tscn")
		return
	pass
