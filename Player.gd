extends CharacterBody3D


const SPEED = 3.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	move_and_slide()


func _on_virtual_joystick_analogic_chage(move: Vector2):
	velocity.x = move.x * SPEED
	velocity.z = move.y * SPEED


func _on_button_jump_pressed():
	# Handle Jump.
	if is_on_floor():
		velocity.y = JUMP_VELOCITY
