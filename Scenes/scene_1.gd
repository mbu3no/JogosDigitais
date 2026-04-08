extends Node2D

@onready var rob = $Rob
@onready var bog = $Bog

var current_character

func _ready():
	current_character = rob
	set_active_character(rob)

func _process(delta):
	if Input.is_action_just_pressed("switch_character"):
		switch_character()

func switch_character():
	if current_character == rob:
		set_active_character(bog)
	else:
		set_active_character(rob)

func set_active_character(character):
	current_character = character
	
	# 🔥 AQUI é onde muda o is_active
	rob.is_active = (character == rob)
	bog.is_active = (character == bog)
