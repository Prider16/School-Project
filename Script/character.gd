extends Character

func _on_ladder_body_entered(body):
	if "Character" in body.name:
		on_ladder=true
	return on_ladder


func _on_ladder_body_exited(body):
	if "Character" in body.name:
		on_ladder=false
	return on_ladder


func _on_ladder_2_body_entered(body):
	if "Character" in body.name:
		on_ladder=true
	return on_ladder


func _on_ladder_2_body_exited(body):
	if "Character" in body.name:
		on_ladder=false
	return on_ladder


func _on_ladder_3_body_entered(body):
	if "Character" in body.name:
		on_ladder=true
	return on_ladder


func _on_ladder_3_body_exited(body):
	if "Character" in body.name:
		on_ladder=false
	return on_ladder


func _on_ladder_4_body_entered(body):
	if "Character" in body.name:
		on_ladder=true
	return on_ladder


func _on_ladder_4_body_exited(body):
	if "Character" in body.name:
		on_ladder=false
	return on_ladder

func _physics_process(delta):
	Movements(delta)
