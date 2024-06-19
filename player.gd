extends CharacterBody2D

@export var player_id := 1:
	set(id):
		player_id = id
		$InputSynchronizer.set_multiplayer_authority(id)

func _ready():
	if multiplayer.get_unique_id() != player_id:
		$Camera2D.enabled = false
