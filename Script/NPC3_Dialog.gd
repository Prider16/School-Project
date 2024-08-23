extends Dialog

func _ready():
	Hide_text_box()

func Dialog_box_Give():
	Show_textBox()
	Queue_text("Hey, You Found My Key. thanks, here's something for you.")
	Hide_text_box()

func Dialog_box_ask():
	Show_textBox()
	Queue_text("Shit, I lost my key.")
	Queue_text("Can you help me find my key? Thanks")
	Hide_text_box()
