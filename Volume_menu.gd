extends Control


func _on_volume_value_changed(value):
	AudioServer.set_bus_volume_db(0,value/5)


func _on_mute_toggled(toggled_on):
	AudioServer.set_bus_mute(0,toggled_on)


