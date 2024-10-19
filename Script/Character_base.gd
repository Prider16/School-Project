extends CharacterBody2D
class_name Character

const SPEED = 200.0
const JUMP_VELOCITY = -250.0
var on_ladder = false

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var player_animation = $AnimatedSprite2D



func Movements(delta):
	if not is_on_floor() and !on_ladder:
		velocity.y += gravity * delta
	#if is_on_floor() and !on_ladder:
		#velocity.y += gravity*delta
	if on_ladder == true:
		if Input.is_action_pressed("UP"):
			velocity.y = -SPEED*delta*10
		elif Input.is_action_pressed("Down"):
			velocity.y = SPEED*delta*10
		else:
			velocity.y = 0

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("Left", "Right")
	
	#Flip the sprite based on directions
	if direction > 0:
		player_animation.flip_h = false
	elif direction < 0:
		player_animation.flip_h = true
	
	#Play Animations
	if is_on_floor():
		if direction == 0:
			player_animation.play("Idle")
		else:
			player_animation.play("Run")
	elif not is_on_floor() and on_ladder:
		player_animation.play("Climb")
	else:
		player_animation.play("Jump")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	

	move_and_slide()
