extends RefCounted
class_name Level3Data

## Fase 3 - Telhados
## Alta gravidade + pulo potente. Loopy subiu nos telhados.

static func get_data() -> Dictionary:
	return {
		"name": "Telhados",
		"description": "Ele está nos telhados! Como subiu tão rápido?\nPule alto e desça rápido para alcançá-lo!",
		"modifier_hint": "Gravidade Alta  +  Pulo Potente  ·  Cuidado com as quedas!",
		"bg_color":       Color(0.07, 0.06, 0.14),
		"platform_color": Color(0.58, 0.32, 0.26),
		"modifiers": {
			"speed_mult":   1.0,
			"jump_mult":    1.5,
			"gravity_mult": 1.7,
			"friction":     1.0,
			"air_control":  1.0,
		},
		"platforms": [
			[0,    620, 260, 28],   # Início
			[340,  510, 110, 18],   # Salto inicial
			[520,  390, 100, 18],   # Alto
			[700,  490, 110, 18],   # Descida
			[900,  375, 90,  18],   # Pular com força
			[1060, 505, 130, 18],   # Descida
			[1260, 560, 200, 22],   # CHECKPOINT 1
			[1530, 430, 100, 18],   # Subida alta
			[1710, 300, 90,  18],   # Telhado alto!
			[1880, 420, 100, 18],   # Descida
			[2070, 545, 110, 18],   # Quase no fim
			[2250, 620, 350, 28],   # Final
		],
		"checkpoints": [
			[1320, 535],
			[1940, 395],
		],
		"hazards": [
			[460, 592, 40, 22],
			[810, 592, 70, 22],
			[1160, 592, 80, 22],
		],
		"exit_pos":    [2510, 580],
		"spawn_rob":   [60,   560],
		"spawn_bog":   [150,  560],
		"loopy_start": [2360, 572],
		"loopy_end":   [2780, 572],
	}
