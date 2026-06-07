@tool
extends Control
class_name LevelIcon

@export var level_name := "1"

@export var next_level_up: LevelIcon
@export var next_level_down: LevelIcon
@export var next_level_left: LevelIcon
@export var next_level_right: LevelIcon


func _ready() -> void:
	$Label.text = "Level" + str(level_name)
	
	
func _process(_delta):
	if Engine.is_editor_hint():
		$Label.text = "Level" + str(level_name)
