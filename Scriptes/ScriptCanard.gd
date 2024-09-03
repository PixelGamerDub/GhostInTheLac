extends KinematicBody2D

onready var vitesse = $"/root/ScriptStats".Vitesse/2.5
var velocite = Vector2()
var plan = Vector2(0, -1)
var regard = null


func _physics_process(delta):
	regard = [randi() % 124 + -124 ,randi() % 124 + -124]
	velocite.x += (regard[0]*vitesse*delta)/12
	velocite.y += (regard[1]*vitesse*delta)/12
	var collision = move_and_collide(velocite*delta)
	if collision:
		regard = [randi() % 124 + -124 ,randi() % 124 -124 ]
		velocite.x += (regard[0]*vitesse*delta)/12
		velocite.y += (regard[1]*vitesse*delta)/12
		velocite=velocite.bounce(collision.normal)
	if velocite.x >=0:
		$Sprite.flip_h =true
	else:
		$Sprite.flip_h =false




func _on_Area2D_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	$"/root/ScriptStats".Sante -=1
	print("ouille!")


func _on_Timer_timeout():
	$AudioStreamPlayer2D.play()
