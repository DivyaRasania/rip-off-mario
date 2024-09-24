extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body):
	Engine.time_scale = 0.5
	timer.start()
	# TODO: Make it so that the whole animation player and not just 1st frame
	body.get_node("AnimationPlayer").play("death")

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
