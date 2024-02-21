extends Area2D

func _on_ObjectiveArea_body_entered(body):
	if (body.name == "rocket"):
		print("Reached objective!")
