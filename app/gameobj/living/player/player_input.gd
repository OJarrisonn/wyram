extends Node2D

signal start_running
signal stop_running
signal attack
signal interact

func _input(_event: InputEvent) -> void:
	if _event.is_action_pressed("run"):
		start_running.emit()
	elif _event.is_action_released("run"):
		stop_running.emit()
	elif _event.is_action_pressed("attack"):
		attack.emit()
	elif _event.is_action_pressed("interact"):
		interact.emit()
