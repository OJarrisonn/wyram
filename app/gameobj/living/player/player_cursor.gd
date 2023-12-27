extends Area2D

@export var cursor_range: float = 250.0

var __attackable_targets = []
var __interactible_targets = []

func _on_body_entered(body) -> void:
	if body == get_parent():
		return
	
	print("[PLCS]: In ranged " + str(body))
	
	if body.is_in_group('attackable'):
		__attackable_targets.append(body)
	if body.is_in_group('interactible'):
		__interactible_targets.append(body)

func _on_body_exited(body):
	if body == get_parent():
		return
	
	print("[PLCS]: Out ranged " + str(body))
	
	if body.is_in_group('attackable'):
		__attackable_targets.erase(body)
	if body.is_in_group('interactible'):
		__interactible_targets.erase(body)

func update() -> void:
	# The vector of how much has the mouse moved
	var cursor_delta = get_parent().get_local_mouse_position()
	
	if cursor_delta.length() > cursor_range: # Ensures it is within the range
		cursor_delta = cursor_delta.normalized() * cursor_range
		
	position = cursor_delta # Moves the cursor to the new position

func get_attack_target() -> Node2D:
	if __attackable_targets.size() > 0:
		print("[PLCS]: Attacking " + str(__attackable_targets[0]))
		return __attackable_targets[0]
	return null
	
func get_interact_target() -> Node2D:
	if __interactible_targets.size() > 0:
		print("[PLCS]: Interacting with " + str(__interactible_targets[0]))
		return __interactible_targets[0]
	return null

