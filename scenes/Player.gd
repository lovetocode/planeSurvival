extends CharacterBody2D

class_name Player

signal died 
@export var speed = 250


func _physics_process(delta):
	var direction = Vector2(Input.get_axis("left", "right"), Input.get_axis("up", "down"))
	velocity = direction * speed
	var half_width = $Sprite2D.texture.get_width() / 2 
	move_and_slide()
	
	global_position = global_position.clamp(Vector2.ZERO, get_viewport_rect().size)
	
func die():
	emit_signal("died")
	queue_free()
