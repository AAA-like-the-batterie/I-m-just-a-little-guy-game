extends CharacterBody2D



const SPEED = 600.0
const JUMP_VELOCITY = -1000.0


func _physics_process(delta):

	if not is_on_floor():
		velocity += get_gravity() * delta

		# Si la touche est relâchée pendant la montée
		if Input.is_action_just_released("Jump") and velocity.y < 0:
			velocity.y *= 0.5

	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("Left", "Right")

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 12)

	move_and_slide()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.

	


	for i in range(get_slide_collision_count()):
		var collision = get_slide_collision(i)
		if !is_dead and (
			collision.get_collider().is_in_group("obstacle")
			or collision.get_collider().is_in_group("obstacle1")
			or collision.get_collider().is_in_group("obstacle3")
		):
			die()
var is_dead = false
func die():
		is_dead = true
		print("Game Over")
		get_tree().call_deferred("reload_current_scene")

		
