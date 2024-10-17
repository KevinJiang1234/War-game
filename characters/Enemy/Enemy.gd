extends Area2D

@export  var speed: int = 100

func _physics_process(delta):
	global_position.y += speed * delta

func _ready():
	pass
	
	

func _on_area_entered(area):
	print("Ouch")
