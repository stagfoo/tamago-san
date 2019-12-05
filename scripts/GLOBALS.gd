extends Node

var current_scene = null
var win = false
var lose = false
var winTimer = 0
var loading = false
var bg_music_node = null
var level_1_status = null
var level_2_status = null
var level_3_status = null
var level_4_status = null
var level_5_status = null
var level_6_status = null
var level_7_status = null
var root

func _ready():
	root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)

func _process(delta):
	if(win):
		goto_scene("res://gui/menu/win.tscn")
		var win = false
		var lose = false
	if(lose):
		goto_scene("res://gui/menu/lose.tscn")
		var win = false
		var lose = false
	
func goto_scene(path):
	call_deferred("_deferred_goto_scene", path)

func _music_scene(path):
	pass

func _deferred_goto_scene(path):
	current_scene.free()
	var s = ResourceLoader.load(path)
	current_scene = s.instance()
	get_tree().get_root().add_child(current_scene)
	get_tree().set_current_scene(current_scene)