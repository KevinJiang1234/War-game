extends Area2D

@onready var laser_charactor = preload("res://characters/laser.tscn")


var speed = 300

var input_vector = Vector2.ZERO


func _physics_process(delta):
	input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input_vector.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	global_position += input_vector * speed * delta
func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		#make a laser
		var laser = laser_charactor.instantiate()
		laser.position = position
		get_parent().add_child(laser)

