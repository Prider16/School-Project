extends Control

@onready var click_2 = $Back/Click2


func _on_back_pressed():
	click_2.play()


func _on_click_2_finished():
	get_tree().change_scene_to_file("res://Scenes/Main_Menu.tscn")
