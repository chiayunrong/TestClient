extends CharacterBody2D

func _enter_tree():
	$InputSynchronizer.set_multiplayer_authority(int(str(get_name())))

func _ready():
	if multiplayer.get_unique_id() != int(str(get_name())):
		$Camera2D.enabled = false
