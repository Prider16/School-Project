extends Node2D


func _on_time_out_timeout():
	get_tree().change_scene_to_file("res://Scenes/Level4/Start_CutScene_F.tscn")