extends Control

func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_resolution_pressed():
	get_tree().change_scene_to_file("res://Resolution_menu.tscn")


func _on_volume_pressed():
	get_tree().change_scene_to_file("res://Volume_menu.tscn")
