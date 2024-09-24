extends CanvasLayer

@onready var mute_music_button: Button = $MuteMusicButton
@onready var music: AudioStreamPlayer2D = $Music

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_mute_music_button_pressed():
	if music.volume_db == 0:
		music.volume_db = -100
		mute_music_button.text = "Unmute"
	elif music.volume_db == -100:
		music.volume_db = 0
		mute_music_button.text = "Mute"
	else:
		print("Volume neither 0 not -100")
