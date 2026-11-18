extends Control
@onready var first_level = preload("res://scene/main.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/main.tscn")
