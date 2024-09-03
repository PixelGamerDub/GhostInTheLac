extends KinematicBody2D

onready var vitesse = $"/root/ScriptStats".Vitesse*2
var velocite = Vector2()
var plan = Vector2(0, -1)
onready var Score = 0

func _physics_process(delta):
	walk(delta)
	move_and_slide(velocite, plan)
	mort()
	

func walk(delta):
	var input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocite= input_direction*vitesse
	if Input.is_action_pressed("ui_right"):
		$animation.play("droite")
	elif Input.is_action_pressed("ui_left"):
		$animation.play("gauche")
	elif Input.is_action_pressed("ui_up"):
		$animation.play("haut")
	elif Input.is_action_pressed("ui_down"):
		$animation.play("bas")
	else:
			$animation.play("neutre")
	
		
func mort():
	if $"/root/ScriptStats".Sante ==0:
		get_tree().change_scene("res://Scenes/SceneGameOver.tscn")
