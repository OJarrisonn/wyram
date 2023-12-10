extends CharacterBody2D

@export var step_size: float = 2.5
@export var run_multiplier: float = 2
@export var max_steps: int = 4
@export var steps_interval: float = 0.1

var remaining_steps = 0
var step_timer = 0.0
var is_running = false

func _process(delta):
	print(velocity)
	if remaining_steps > 0:
		step_timer += delta
		if step_timer >= steps_interval:
			walk()

func walk():
	move_and_slide()
	remaining_steps -= 1
	step_timer = 0.0
	if remaining_steps < 1:
		velocity = Vector2.ZERO

func recv_movement(dir):
	velocity = (step_size * (run_multiplier if is_running else 1)) * 1000 * Vector2(cos(dir), sin(dir))
	remaining_steps = max_steps

func recv_start_run():
	is_running = true

func recv_stop_run():
	is_running = false
