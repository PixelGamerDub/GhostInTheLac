extends Node

onready var Vitesse = 700
onready var Sante = 3
onready var Score = 0
onready var Temps = 0
onready var Palier = 0

func _process(delta):
	if Sante == 0:
		Sante = 3
