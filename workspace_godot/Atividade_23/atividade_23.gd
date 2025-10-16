extends Control
@export var speed: float = 200.0
@onready var anim = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	var input_vector = Vector2.ZERO

	# Captura das direções
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1

	# --- Controle de animações ---
	if input_vector != Vector2.ZERO:
		if abs(input_vector.x) > abs(input_vector.y):
			if input_vector.x > 0:
				anim.play("right")
			else:
				anim.play("left")
		else:
			if input_vector.y > 0:
				anim.play("down")
			else:
				anim.play("up")
	else:
		anim.stop()  # para a animação quando não há movimento
