extends AnimatedSprite2D


var key_equip = false
var keyboard = false
var equip :bool = false
@onready var label = $Label
@onready var ui = %UI
@onready var text_dialogs = $TextDialogs


func _on_area_2d_body_entered(body : Node2D):
	if "Character" in body.name:
		label.visible = true
		keyboard = true



func _on_area_2d_body_exited(body):
	if "Character" in body.name:
		label.visible = false
		keyboard = false

func _process(delta):
	if keyboard == true and Input.is_action_just_pressed("Interact"):
		if equip == true:
			text_dialogs.Dialog_box_Give()
			ui.Add_Flag_Point()
			ui.Add_Flag_Point()
			equip = false
		else:
			text_dialogs.Dialog_box_ask()


func _on_key_tree_exited():
	equip = true