extends "res://gameobj/living/living.gd"

func _physics_process(delta):
	print(velocity)
	if remaining_steps > 0:
		step_timer += delta
		if step_timer >= steps_interval:
			walk()

func recv_movement(dir):
	velocity = (step_size * (run_multiplier if is_running else 1)) * 1000 * Vector2(cos(dir), sin(dir))
	remaining_steps = max_steps

func recv_start_run():
	is_running = true

func recv_stop_run():
	is_running = false
