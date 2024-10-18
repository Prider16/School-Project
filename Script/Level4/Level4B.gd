extends Node2D


func _on_time_out_timeout():
	get_tree().change_scene_to_file("res://Scenes/Level5/Start_CutScene_F.tscn")

@onready var ui = %UI
func _process(delta):
	if ui.flag_count.text == "5":
		ui.ChangeScene("res://Scenes/Level5/Start_CutScene_F.tscn",5) 
