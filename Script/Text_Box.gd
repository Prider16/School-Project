extends CanvasLayer
class_name Dialog

enum State{
	READY,
	READING,
	FINISHED
}

var current_state = State.READY
const CHAR_READ_RATE = 0.1

@onready var text_box = $TextBox
@onready var start_symbol = $TextBox/HBoxContainer/Start
@onready var text_symbol = $TextBox/HBoxContainer/Text
@onready var end_symbol = $TextBox/HBoxContainer/End
var tween:Tween
var queue_text = []
var scene = ""

func _process(delta):
	match current_state:
		State.READY:
			end_symbol.text = ""
			if !queue_text.is_empty():
				display_text()
			else:
				get_tree().change_scene_to_file(scene)
		State.READING:
			if Input.is_action_just_pressed("Enter"):
				text_symbol.visible_characters = 75
				tween.stop()
				end_symbol.text = "->"
				Current_state(State.FINISHED)
		State.FINISHED:
			if Input.is_action_just_pressed("Enter"):
				Current_state(State.READY)
				text_box.hide()

func Queue_text(next_text):
	queue_text.push_back(next_text)

func Hide_text_box():
	start_symbol.text = ""
	text_symbol.text = ""
	end_symbol.text = ""
	text_box.hide()

func Show_textBox():
	start_symbol.text = "*"
	text_box.show()

func display_text():
	var next_text = queue_text.pop_front()
	text_symbol.text = next_text
	text_symbol.visible_characters = 0
	Current_state(State.READING)
	Show_textBox()
	tween = get_tree().create_tween()
	tween.tween_property(text_symbol, "visible_characters",75, len(next_text) * CHAR_READ_RATE).from(0).finished
	tween.connect("finished", on_tween_finished)
func on_tween_finished():
	end_symbol.text = "->"
	Current_state(State.FINISHED)

func Current_state(next_state):
	current_state = next_state

func Finish(Scene_port):
	scene = Scene_port
