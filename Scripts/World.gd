extends Node2D

var x = 0
var y = 0

func _ready():
	set_process_input(true)


func _unhandled_input(event):
	if event is InputEventKey:
		if event.is_action_pressed("ui_left"): x -= 5
		$Camera.add_trauma(0.1)
		if event.is_action_pressed("ui_right"): x += 5
		$Camera.add_trauma(0.1)
		if event.is_action_pressed("ui_up"): y += 5
		$Camera.add_trauma(0.1)
		if event.is_action_pressed("ui_down"): y -= 5
		$Camera.add_trauma(0.1)
		print(str(x))


onready var Camera = $Camera

#func _ready():
	#pass
