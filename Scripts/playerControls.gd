extends CharacterBody2D


const SPEED: float = 100.0
const DRAG: float = 0.8

var acceleration = Vector2(0,0)


func _physics_process(delta):
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Vector2(Input.get_axis("ui_left", "ui_right"), Input.get_axis("ui_up", "ui_down"))
	if direction:
		acceleration = direction.normalized() * SPEED
	else:
		acceleration = Vector2(0,0)
	
	velocity *= DRAG
	velocity += acceleration;
	move_and_slide()
