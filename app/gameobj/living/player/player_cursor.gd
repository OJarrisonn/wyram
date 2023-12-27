extends Area2D

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
