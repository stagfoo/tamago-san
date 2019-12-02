extends ItemList

onready var LEVEL_1 = get_node("Level_1")
onready var LEVEL_2 = get_node("Level_2")
onready var LEVEL_3 = get_node("Level_3")
onready var LEVEL_4 = get_node("Level_4")
onready var LEVEL_5 = get_node("Level_5")
onready var END_BUTTON =  get_node("End Game")
onready var LOADING =  get_node("/root/Loading")

func _ready():
	pass

func _process(delta):
	LOADING.visible = GLOBALS.loading
	pass
func _on_Button_pressed():
	GLOBALS.lose = false
	GLOBALS.win = false
	GLOBALS.loading = true
	if(LEVEL_1.pressed):
		GLOBALS.goto_scene("res://levels/Level-1.tscn")
		GLOBALS.loading = false		
		return
	if(LEVEL_2.pressed):
		GLOBALS.goto_scene("res://levels/Level-2.tscn")
		GLOBALS.loading = false		
		return
	if(LEVEL_3.pressed):
		GLOBALS.goto_scene("res://levels/Level-3.tscn")
		GLOBALS.loading = false		
		return
	if(LEVEL_4.pressed):
		#todo fix caps
		GLOBALS.goto_scene("res://levels/level-4.tscn")
		GLOBALS.loading = false
		return
	if(LEVEL_5.pressed):
		GLOBALS.goto_scene("res://levels/level-5.tscn")
		GLOBALS.loading = false
		return
	pass
