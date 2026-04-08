extends CharacterBody2D

const SPEED = 400.0
const JUMP_VELOCITY = -600.0

@onready var anim = $AnimationPlayer

var jump_finished = false
var is_active = false

func _physics_process(delta: float) -> void:
	# ✅ Gravidade sempre ativa
	if not is_on_floor():
		velocity += get_gravity() * delta

	var direction := 0

	# ✅ Input só se ativo
	if is_active:
		direction = Input.get_axis("ui_left", "ui_right")

		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			jump_finished = false
	else:
		# desacelera suavemente quando inativo
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# ✅ Movimento horizontal
	if direction != 0:
		velocity.x = direction * SPEED
		$Sprite2D.flip_h = direction < 0
	elif is_active:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# ✅ SEMPRE chama isso
	move_and_slide()

	# 🎬 ANIMAÇÃO (corrigida)
	update_animation(direction)


func update_animation(direction):
	# 🔥 Reset do jump quando toca o chão
	if is_on_floor():
		jump_finished = false

	if not is_on_floor():
		play_anim("Jump")
	else:
		if direction != 0:
			play_anim("Walk")
		else:
			play_anim("Idle")


func play_anim(name):
	if anim.current_animation != name:
		anim.play(name)
