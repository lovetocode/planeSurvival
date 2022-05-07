extends Control

func _ready():
	$HighestLabel.text = "Highest: " + str(Global.highscore)
	

func _on_StartButton_pressed():
	get_tree().change_scene("res://scenes/World.tscn")
