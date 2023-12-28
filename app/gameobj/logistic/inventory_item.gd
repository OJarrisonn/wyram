class_name InventoryItem

var __id: String
var __max_stack: int = 50

func _init(id: String):
	__id = id

func get_id() -> String:
	return __id

func set_max_stack(value: int) -> InventoryItem:
	__max_stack = value
	
	return self

func get_max_stack() -> int:
	return __max_stack
