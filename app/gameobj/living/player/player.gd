extends "res://gameobj/living/living.gd"

@onready var cursor = $player_cursor

func _ready():
	print("[PL]: Ready")

func _physics_process(delta):
	var move_dir: Vector2 = Input.get_vector("east", "west", "north", "south")
	if move_dir.length() > 0:
		walk(move_dir * delta * 1000)

	cursor.update()

func attack():
	var target = cursor.get_attack_target()
	print(target)

	if target is Living:
		target.take_damage(base_damage)

func interact():
	var target = cursor.get_interact_target()
	print("[PL] Interacting with " + str(target))

func recv_start_run():
	is_running = true

func recv_stop_run():
	is_running = false

func recv_attack():
	attack()

func recv_interact():
	print("Player interacting")
