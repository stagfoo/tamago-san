extends ItemList

onready var LEVEL_1 = get_node("Level_1")
onready var LEVEL_2 = get_node("Level_2")
onready var LEVEL_3 = get_node("Level_3")
onready var LEVEL_4 = get_node("Level_4")
onready var LEVEL_5 = get_node("Level_5")
onready var LEVEL_6 = get_node("Level_6")
onready var LEVEL_7 = get_node("Level_7")
onready var LEVEL_8 = get_node("Level_8")
onready var LEVEL_9 = get_node("Level_9")
onready var LEVEL_10 = get_node("Level_10")
onready var END_BUTTON =  get_node("End Game")
onready var LOADING =  get_node("/root/Loading")
onready var BG_MUSIC_TOGGLE =  get_parent().get_children()[2]

func _ready():
	pass

func _process(delta):
	LOADING.visible = GLOBALS.loading
	print()
	if(GLOBALS.level_1_status == "WIN"):
		LEVEL_1.get_children()[1].visible = true
	if(GLOBALS.level_2_status == "WIN"):
		LEVEL_2.get_children()[1].visible = true
	if(GLOBALS.level_3_status == "WIN"):
		LEVEL_3.get_children()[1].visible = true
	if(GLOBALS.level_4_status == "WIN"):
		LEVEL_4.get_children()[1].visible = true
	if(GLOBALS.level_5_status == "WIN"):
		LEVEL_5.get_children()[1].visible = true
	if(GLOBALS.level_6_status == "WIN"):
		LEVEL_6.get_children()[1].visible = true
	if(GLOBALS.level_7_status == "WIN"):
		LEVEL_7.get_children()[1].visible = true
	if(GLOBALS.level_1_status == "LOSE"):
		LEVEL_1.get_children()[0].visible = true
	if(GLOBALS.level_2_status == "LOSE"):
		LEVEL_2.get_children()[0].visible = true
	if(GLOBALS.level_3_status == "LOSE"):
		LEVEL_3.get_children()[0].visible = true
	if(GLOBALS.level_4_status == "LOSE"):
		LEVEL_4.get_children()[0].visible = true
	if(GLOBALS.level_5_status == "LOSE"):
		LEVEL_5.get_children()[0].visible = true
	if(GLOBALS.level_6_status == "LOSE"):
		LEVEL_6.get_children()[0].visible = true
	if(GLOBALS.level_7_status == "LOSE"):
		LEVEL_7.get_children()[0].visible = true 
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
	if(LEVEL_6.pressed):
		GLOBALS.goto_scene("res://levels/level-6.tscn")
		GLOBALS.loading = false
		return
	if(LEVEL_7.pressed):
		GLOBALS.goto_scene("res://levels/level-7.tscn")
		GLOBALS.loading = false
		return
	if(LEVEL_8.pressed):
		GLOBALS.goto_scene("res://levels/level-8.tscn")
		GLOBALS.loading = false
		return
	if(LEVEL_9.pressed):
		GLOBALS.goto_scene("res://levels/level-9.tscn")
		GLOBALS.loading = false
		return
	if(LEVEL_10.pressed):
		GLOBALS.goto_scene("res://levels/level-10.tscn")
		GLOBALS.loading = false
		return
	if(BG_MUSIC_TOGGLE.pressed):
		GLOBALS.bg_music_node.stop()
	pass
