extends CharacterBody2D


const HEALTH_GAINED = 1
const SPEED = 130.0
const JUMP_VELOCITY = -300.0
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var health_bar: ProgressBar = $UI/Health
@export var health : int = 3
@export var current_health = health
@export var max_health = 5


func _ready() -> void:
	if health_bar:
		health_bar.max_value = max_health
		health_bar.value = current_health

func set_health() -> void:
	current_health += HEALTH_GAINED
	health_bar.value = health
	if health == 0:
		die()

func _on_area_entered(area_that_entered: Area2D) -> void:
	set_health()
	
func die() -> void:
	queue_free()
	
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
