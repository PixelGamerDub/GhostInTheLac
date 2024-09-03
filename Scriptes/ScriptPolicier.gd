extends KinematicBody2D

onready var speed = $"/root/ScriptStats".Vitesse/2
var motion = Vector2.ZERO

var path: Array = []
var NavigationNode = null
var player = null

func _ready():
	if get_tree().has_group("nav"):
		NavigationNode = get_tree().get_nodes_in_group("nav") [0]
	if get_tree().has_group("joueur"):
		player = get_tree().get_nodes_in_group("joueur") [0]

func _process(delta):
	create_path()
	goto()
	move_and_slide(motion)
func create_path():
	if NavigationNode != null and player != null :
		path = NavigationNode.get_simple_path(global_position, player.global_position, false) 

func goto():
	if path.size() > 0:
		motion = global_position.direction_to(path[1])*speed


func _on_Area2D_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	$"/root/ScriptStats".Sante -=1
	print("ouille!")


func _on_Timer_timeout():
	$AudioStreamPlayer2D.stream_paused = true
