extends CharacterBody2D


const SPEED = 700.0
const JUMP_VELOCITY = -400.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction :=-1
@onready var detector =$detector as RayCast2D
# Get the gravity from the project settings to be synced with RigidBody nodes.


func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	if detector.is_colliding():
		direction *=-1
		detector.scale.x *=-1
		velocity.x = direction * SPEED * delta
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
