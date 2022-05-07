extends Node

export var EnemyScene: PackedScene


func _on_SpawnTimer_timeout():
	for i in 3:
		var enemy = EnemyScene.instance()
		add_child(enemy)
		enemy.position = Vector2(rand_range(10, 170), 0)
		enemy.connect("screen_exicted", self, "_on_Enemy_exicited")


func _on_Enemy_exicited():
	$CanvasLayer/ScoreLabel.add_score()
	
	
func _on_Player_died():
	if $CanvasLayer/ScoreLabel.score > Global.highscore:
		Global.highscore = $CanvasLayer/ScoreLabel.score
	$Explosion.position = $Player.position
	$Explosion.emitting = true
	$ExplosionSound.play()


func _on_ExplosionSound_finished():
	get_tree().change_scene("res://scenes/Menu.tscn")
