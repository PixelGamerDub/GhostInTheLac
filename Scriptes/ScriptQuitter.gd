extends Node

func _physics_process(delta):
	if Input.is_action_pressed("ui_end"):
		get_tree().quit()
