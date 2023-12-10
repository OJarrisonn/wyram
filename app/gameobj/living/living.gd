extends CharacterBody2D

class_name Living

signal hurt
signal died

@export var max_life: int = 0

var _life_points: int = 0


@export var step_size: float = 2.75
@export var run_multiplier: float = 2
@export var max_steps: int = 4
@export var steps_interval: float = 0.15

var remaining_steps = 0
var step_timer = 0.0
var is_running = false

func take_damage(damage: int) -> void:
	hurt.emit()
	
	_life_points -= damage
	if _life_points <= 0:
		die()

func heal(points: int) -> void:
	_life_points += points
	if _life_points > max_life:
		_life_points = max_life

func walk():
	move_and_slide()
	remaining_steps -= 1
	step_timer = 0.0
	if remaining_steps < 1:
		velocity = Vector2.ZERO

func die():
	died.emit()
