extends Control

@onready var click_2 = $Back/Click2
@onready var click_1 = $Character_M/Click1
@onready var click_3 = $Character_F/Click3


func _on_back_pressed():
	click_2.play()


func _on_click_2_finished():
	get_tree().change_scene_to_file("res://Scenes/Main_Menu.tscn")


func _on_character_m_pressed():
	click_1.play()


func _on_character_f_pressed():
	click_3.play()


func _on_click_1_finished():
	get_tree().change_scene_to_file("res://Scenes/Level1/Star_Cutscene.tscn")


func _on_click_3_finished():
	get_tree().change_scene_to_file("res://Scenes/Level1/Start_CutScene.tscn")
