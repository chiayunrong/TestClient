extends MultiplayerSynchronizer

@export var input_direction := Vector2(0, 0)

func _ready():
	input_direction = Input.get_vector("left", "right", "up", "down")

func _physics_process(delta):
	input_direction = Input.get_vector("left", "right", "up", "down")
