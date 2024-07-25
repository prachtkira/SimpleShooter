extends Node2D

var lives =2
@onready var player = $Player

func _on_despawn_area_entered(area):
	area.destroyMeteor()

func _on_player_took_damage():
	lives -= 1
	if lives == 0:
		print("Rocket destroyed!")
		player.queue_free()
	else:
		print(lives)
