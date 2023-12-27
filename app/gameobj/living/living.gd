extends CharacterBody2D

class_name Living

signal hurt
signal died

@export var max_life: int = 1
@export var base_damage: int = 1

var __life_points: int = 1

@export var speed: float = 20.
@export var run_multiplier: float = 2

var is_running = false
var mouse_over = false

func _ready():
	add_to_group('attackable')
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)

func take_damage(damage: int) -> void:
	hurt.emit()
	
	__life_points -= damage
	if __life_points <= 0:
		die()

func heal(points: int) -> void:
	__life_points += points
	if __life_points > max_life:
		__life_points = max_life

func walk(dir: Vector2):
	velocity = dir * speed * (run_multiplier if is_running else 1.0)
	move_and_slide()

func die():
	died.emit()

func _on_mouse_entered():
	print("Dento")
	mouse_over = true

func _on_mouse_exited():
	print("Fora")
	mouse_over = false
