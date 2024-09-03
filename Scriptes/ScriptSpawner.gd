extends Node2D

var hazardspawn= null
var canard = load("res://Scenes/SceneCanard.tscn")
var policier = load("res://Scenes/ScenePolicier.tscn")
var citoyen = load("res://Scenes/SceneCitoyen.tscn")
var canrespawn = false

func _on_Timer_timeout():
	var c = canard.instance()
	var p = policier.instance()
	$"/root/ScriptStats".Temps += 1
	print($"/root/ScriptStats".Temps)
	if $"/root/ScriptStats".Temps%10 == 0:
		hazardspawn= randi() % 8 + 1
		add_child(p)
		if hazardspawn == 1:
			p.transform = $a1.global_transform
		elif hazardspawn == 2:
			p.transform = $b2.global_transform
		elif hazardspawn == 3:
			p.transform = $c4.global_transform
		elif hazardspawn == 4:
			p.transform = $c5.global_transform
		elif hazardspawn == 5:
			p.transform = $c6.global_transform
		elif hazardspawn == 6:
			p.transform = $c7.global_transform
		else:
			c.transform = $c3.global_transform
	if $"/root/ScriptStats".Temps%25 == 0:
		hazardspawn= randi() % 8 + 1
		add_child(c)
		if hazardspawn == 1:
			c.transform = $a1.global_transform
		elif hazardspawn == 2:
			c.transform = $b2.global_transform
		elif hazardspawn == 3:
			c.transform = $c4.global_transform
		elif hazardspawn == 4:
			c.transform = $c5.global_transform
		elif hazardspawn == 5:
			c.transform = $c6.global_transform
		elif hazardspawn == 6:
			c.transform = $c7.global_transform
		else:
			c.transform = $c3.global_transform

func _process(delta):
	if $"/root/ScriptStats".Sante !=3:
		pass
