extends Control

@onready var click_1 = $"Maste Volume/Click1"
@onready var click_2 = $Back/Click2
var Master_Bus = AudioServer.get_bus_index("Master")
var SFX_Bus = AudioServer.get_bus_index("SFX")
var Music_Bus = AudioServer.get_bus_index("Music")


func _on_maste_volume_pressed():
	click_1.play()
	AudioServer.set_bus_mute(Master_Bus, not AudioServer.is_bus_mute(Master_Bus))

func _on_music_volume_pressed():
	click_1.play()
	AudioServer.set_bus_mute(Music_Bus, not AudioServer.is_bus_mute(Music_Bus))


func _on_sfx_volume_pressed():
	click_1.play()
	AudioServer.set_bus_mute(SFX_Bus, not AudioServer.is_bus_mute(SFX_Bus))


func _on_back_pressed():
	click_2.play()


func _on_click_2_finished():
	get_tree().change_scene_to_file("res://Scenes/Main_Menu.tscn")
