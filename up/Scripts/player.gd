extends CharacterBody2D

var health := 10
const SPEED = 130.0
const JUMP_VELOCITY = -300.0
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var health_bar: ProgressBar = $UI/ProgressBar


func _ready() -> void:
	# This call updates the health bar to match the health variable when the
	# game starts.
	set_health(health)
	
func set_health(new_health: int) -> void:
	health = new_health
<<<<<<< Updated upstream


func _on_body_entered(area_that_entered: CharacterBody2D) -> void:
=======
	health_bar.value = health


func _on_body_entered(area_that_entered: Area2D) -> void:
>>>>>>> Stashed changes
	set_health(health + 10)
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
