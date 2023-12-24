extends CharacterBody2D

class_name Living

signal hurt
signal died

@export var max_life: int = 0

var _life_points: int = 0


@export var speed: float = 20.
@export var run_multiplier: float = 2

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

func walk(dir: Vector2):
	velocity = dir * speed * (run_multiplier if is_running else 1.0)
	move_and_slide()

func die():
	died.emit()
