extends MultiplayerSynchronizer

@export var input_direction := Vector2(0, 0)

func _physics_process(_delta):
	input_direction = Input.get_vector("left", "right", "up", "down")
