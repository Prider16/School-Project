extends Control

@onready var click = $"Start Button/Click1"
@onready var Settings_click = $"Settings/Click2"
@onready var Howto_click = $"How To?/Click3"
@onready var Exit_click = $"Exit/Click4"

func _on_start_button_pressed():
	click.play()


func _on_settings_pressed():
	Settings_click.play()


func _on_how_to_pressed():
	Howto_click.play()


func _on_exit_pressed():
	Exit_click.play()


func _on_click_1_finished():
	get_tree().change_scene_to_file("res://Scenes/Character_Selection.tscn")


func _on_click_2_finished():
	get_tree().change_scene_to_file("res://Scenes/Settings.tscn")


func _on_click_3_finished():
	get_tree().change_scene_to_file("res://Scenes/Credits.tscn")


func _on_click_4_finished():
	get_tree().quit()
