extends CharacterBody2D


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@export var jump_speed: float = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

func _physics_process(delta: float) -> void:
	#pass
	
	# Apply gravity
	velocity.y += gravity * delta
	
	#Jump
	if Input.is_action_pressed("jump"):
		try_jump()
	
	# Tells the engine to use the set velocity
	# and move the character the proper amount,
	# interacting with any collision bodies along the way.
	move_and_slide()


func try_jump():
	var jump_is_ready: bool = $JumpTimer.is_stopped()
	if jump_is_ready:
		velocity.y += -jump_speed
		$JumpTimer.start()
		




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
