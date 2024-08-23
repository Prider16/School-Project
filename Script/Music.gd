extends AudioStreamPlayer

@onready var audio_stream_player = $"."

func _on_finished():
	audio_stream_player.play()
