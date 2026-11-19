extends Area2D
@onready var first_level = preload("res://scene/Endingmenu.tscn")


func _on_body_entered(body) -> void:
	if body.name == "CharacterBody2D":
		get_tree().change_scene_to_file("res://scene/Endingmenu.tscn")
