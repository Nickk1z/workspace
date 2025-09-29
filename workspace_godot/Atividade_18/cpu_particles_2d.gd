extends CPUParticles2D

var current_level := 1
var current_xp := 0
var xp_to_next_level := 100

func add_xp(amount):
	current_xp += amount
	if current_xp >= xp_to_next_level:
		level_up()

func level_up():
	current_level += 1
	current_xp = 0
	xp_to_next_level += 50  # Exemplo: aumenta a dificuldade
	
	# Dispara partículas de comemoração
	var particles = preload("res://atividade_21/cpu_particles_2d.tscn").instantiate()
	add_child(particles)
	particles.position = Vector2(640, 360) # centro da tela, ajuste para onde quiser
	particles.emitting = true
