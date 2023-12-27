extends "res://gameobj/living/living.gd"

@onready var cursor = $player_cursor



func _physics_process(delta):
	var move_dir: Vector2 = Input.get_vector("east", "west", "north", "south")
	if move_dir.length() > 0:
		walk(move_dir * delta * 1000)


func attack():
	for body in zone.attackables:
		if body.mouse_over:
			print(body)

func _on_mouse_entered():
	self.mouse_over = true

func _on_mouse_exited():
	self.mouse_over = false

func recv_start_run():
	is_running = true

func recv_stop_run():
	is_running = false

func recv_attack():
	attack()

func recv_interact():
	print("Player interacting")
