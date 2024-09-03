extends StaticBody2D


func _on_Area2D_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	$"/root/ScriptStats".Score += 1
	$Area2D.set_deferred("monitorable", false)
	$Area2D.set_deferred("monitoring", false)
	if get_tree().has_group("joueur"):
		$AnimatedSprite.play("coule")
		$AudioStreamPlayer2D.play()
		print($Area2D.monitorable)

func _on_AnimatedSprite_animation_finished():
	$AudioStreamPlayer2D.stop()
	$AnimatedSprite.playing=false
	visible=false

func _on_Timer_timeout():
	visible=true
	$Area2D.set_deferred("monitorable", true)
	$Area2D.set_deferred("monitoring", true)
