extends Control

func _ready():
	$HighestLabel.text = "Highest: " + str(Global.highscore)
	
func _process(delta):
	if Input.is_action_just_pressed("Retry"):
		get_tree().change_scene_to_file("res://scenes/World.tscn")
