extends Control

func _ready():
	$Panel.set_deferred("visible", false)
func _process(delta):
	if Input.is_action_just_pressed("ui_focus_next"):
		get_tree().change_scene("res://Scenes/TestPathfinding.tscn")
	$"/root/ScriptStats".Temps = 0
	$"/root/ScriptStats".Score = 0
	$"/root/ScriptStats".Palier = 0
	$"/root/ScriptStats".Vitesse = 700
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://Scenes/SceneMenu.tscn")
	if Input.is_action_just_pressed("ui_focus_prev"):
		$Panel.set_deferred("visible", true)
	if Input.is_action_just_pressed("ui_page_up"):
		$Panel.set_deferred("visible", false)
	
