extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var anim = $AnimationPlayer

var jump_finished = false
var is_active = false

func _physics_process(delta: float) -> void:
	if not is_active:
		return
	
	# Gravidade
	if not is_on_floor():
		velocity += get_gravity() * delta

	var direction := Input.get_axis("ui_left", "ui_right")

	# Pulo
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jump_finished = false

	# Movimento horizontal
	if direction:
		velocity.x = direction * SPEED
		$Sprite2D.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

	# 🎬 ANIMAÇÃO
	if not is_on_floor():
		if not jump_finished:
			play_anim("Jump_2")
	else:
		if direction != 0:
			play_anim("Walk_2")
		else:
			play_anim("Idle_2")


func play_anim(name):
	if anim.current_animation != name:
		anim.play(name)


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "Jump_2":
		anim.pause()
		jump_finished = true
