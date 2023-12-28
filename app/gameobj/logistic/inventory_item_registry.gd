static var __registry = {}

func register_all():
	add_registry(InventoryItem.new("w::void"))
	add_registry(InventoryItem.new("w::wood"))

func add_registry(item: InventoryItem):
	if __registry.has(item.get_id()):
		return
	
	__registry[item.get_id()] = item

func get_registry(id: String):
	return __registry[id]
