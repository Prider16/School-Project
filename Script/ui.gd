extends CanvasLayer

var C_Score = 0
var F_Score = 0.0
@onready var coin_count = $Coin/Coin_Count
@onready var flag_count = $Flag/Flag_Count
@onready var timer = $Timer
@onready var timer_count = $Timer_count

func _ready():
	timer.start()

func ChangeScene(Transit, TotalFlags):
	if TotalFlags == 5:
		get_tree().change_scene_to_file(Transit)

func Add_Coin_Point():
	C_Score += 1
	coin_count.text = str(C_Score)

func Add_Flag_Point():
	F_Score += 1
	flag_count.text = str(F_Score/2)

func Time_remains():
	var time_left = timer.time_left
	var minutes = floor(time_left / 60)
	var seconds = int(time_left) % 60
	return [minutes, seconds]

func _process(delta):
	timer_count.text = "%02d:%02d" % Time_remains()
