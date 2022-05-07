extends Area2D

signal died 
export var speed = 250



func _process(delta):
	 var input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	 var new_position = position.x + input * delta * speed
	 var half_width = $Sprite.texture.get_width() / 2 
	
	 position.x = clamp(new_position,half_width,180 - half_width)
	
	



func _on_Player_area_entered(area):
	emit_signal("died")
	queue_free()
