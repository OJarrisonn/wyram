extends Area2D

var attackables = []
var interactibles = []

func _on_body_entered(body):
	if body.is_in_group('attackable'):
		attackables.append(body)
	if body.is_in_group('interactible'):
		interactibles.append(body)



func _on_body_exited(body):
	attackables.erase(body)
	interactibles.erase(body)
