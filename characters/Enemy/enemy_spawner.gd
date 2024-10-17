extends Node2D

var enemy_prefab = preload("res://characters/Enemy/Enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _process(delta):
	pass

func _on_spawn_timer_timeout():
	var enemy_object = enemy_prefab.instantiate()
	#position the enemy
	var random_x = randi_range(20,1100)
	enemy_object.position = Vector2(random_x,0)
	#add enemy to the tree
	add_child(enemy_object)
