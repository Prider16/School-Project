extends AnimatedSprite2D

@onready var ui = %UI
@onready var animation_player = $AnimationPlayer

func _on_area_2d_body_entered(body:Node2D):
	if "Character" in body.name:
		ui.Add_Coin_Point()
		animation_player.play("Pick_Up")

