extends Area2D

class_name Enemy

signal screen_exicted
@export var speed = 250

func _process(delta):
	position.y  = position.y + speed * delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	emit_signal("screen_exicted")


func _on_body_entered(body):
	if body is Player:
		body.die()
		
