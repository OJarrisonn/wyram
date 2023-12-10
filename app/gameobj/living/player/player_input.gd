extends Node2D

signal move(dir: float)
signal start_running
signal stop_running

func _input(_event: InputEvent) -> void:
	if _event.is_action_pressed("attack"):
		var mouse = get_local_mouse_position()
		var angle = mouse.angle() #snappedf(mouse.angle(), PI/4) / (PI/4)
		angle = round(8*(angle / (2*PI))) / 8 * 2*PI
		move.emit(angle)
	elif _event.is_action_pressed("run"):
		start_running.emit()
	elif _event.is_action_released("run"):
		stop_running.emit()
