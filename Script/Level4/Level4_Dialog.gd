extends Dialog

func _ready():
	Hide_text_box()
	Queue_text("Phew, that was hard...")
	Queue_text("Yeah, agree")
	Queue_text("So, do we have more?")
	Queue_text("Yup, 2 more to go..XD")
	Queue_text("O-Okay..:()")
	Queue_text("Lets Go then.")
	Finish("res://Scenes/Level4/Level4.tscn")

