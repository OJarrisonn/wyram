class_name InventoryItemStack

var __item: InventoryItem
var __amount: int

func _init(item: InventoryItem, amount: int):
	__item = item
	__amount = amount

func get_item() -> InventoryItem:
	return __item
	
func get_amount() -> int:
	return __amount

# Sets the stack amount to the passed value and returns the excedent  
func set_amount(amount: int) -> int:
	if amount >= 0 and amount <= __item.get_max_stack():
		__amount = amount
	elif amount < 0:
		__amount = 0
	else: 
		__amount = __item.get_max_stack()
		return amount - __item.get_max_stack()
	return 0
