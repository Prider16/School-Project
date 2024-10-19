extends Control

@onready var playAgain = $"Play Again/Click1"
@onready var exit = $Exit/Click2
@onready var mainMenu = $"Main Menu/Click3"

func _on_play_again_pressed():
	playAgain.play()

func _on_exit_pressed():
	exit.play()

func _on_main_menu_pressed():
	mainMenu.play()


func _on_click_1_finished():
	get_tree().change_scene_to_file("res://Scenes/Character_Selection.tscn")


func _on_click_2_finished():
	get_tree().quit()


func _on_click_3_finished():
	get_tree().change_scene_to_file("res://Scenes/Main_Menu.tscn")
