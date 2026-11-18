extends Area2D


# Called when the node enters the scene tree for the first time.


func _on_body_entered(body) -> void:
	
	if body.name == "CharacterBody2D":
		body.respawn()
	
