extends AnimatedSprite2D

var key_equip = false
var keyboard = false
@onready var label = $Label
@onready var animation_player = $AnimationPlayer

func _on_area_2d_body_entered(body : Node2D):
	if "Character" in body.name:
		label.visible = true
		keyboard = true



func _on_area_2d_body_exited(body):
	if "Character" in body.name:
		label.visible = false
		keyboard = false

func Equip():
	if key_equip == true:
		return true
	else:
		return false

func _process(delta):
	if key_equip == true:
		Equip()
		animation_player.play("Pick_Key")
	
	if keyboard == true and Input.is_action_pressed("Interact"):
		key_equip = true
