extends AnimatedSprite2D

var flag_equip = false
var keyboard = false
@onready var label = $Label
@onready var ui = %UI
@onready var collect = $Collect

func _on_area_2d_body_entered(body: Node2D):
	if "Character" in body.name:
		label.visible = true
		keyboard = true

func _on_area_2d_body_exited(body):
	if "Character" in body.name:
		label.visible = false
		keyboard = false

func _process(delta):
	if flag_equip == true:
		queue_free()
	if keyboard == true and Input.is_action_pressed("Interact"):
		collect.play()
		ui.Add_Flag_Point()
		flag_equip = true



