extends "res://gameobj/living/living.gd"

func _physics_process(delta):
	var move_dir: Vector2 = Input.get_vector("east", "west", "north", "south")
	if move_dir.length() > 0:
		walk(move_dir * delta * 1000)

func recv_start_run():
	is_running = true

func recv_stop_run():
	is_running = false
