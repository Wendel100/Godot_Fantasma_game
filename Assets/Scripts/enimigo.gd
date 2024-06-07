extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var mudar_lado:= $RayCast2D as RayCast2D
@onready var trocar = $AnimatedSprite2D as AnimatedSprite2D
var dano:int = 0
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	var direction = -1
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if mudar_lado.is_colliding():
		velocity.x -= direction * SPEED 
		trocar.scale =direction
	move_and_slide()


func _on_hitbox_body_entered(body):
	if body.name == "Fantasma":
		dano +=1
		$CanvasLayer/Label.set_text(str(dano))
		body.velocity.y =body.JUMP_VELOCITY
		print("funciona")
	if dano==2:
		queue_free()
