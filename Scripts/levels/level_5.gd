extends RefCounted
class_name Level5Data

## Fase 5 - Encontro com Loopy
## Todos os modificadores combinados. Fase final — Loopy fica parado.

static func get_data() -> Dictionary:
	return {
		"name": "Encontro com Loopy",
		"description": "Ali está o Loopy! Ele parou...\nAlcance-o e traga seu amigo de volta!",
		"modifier_hint": "Velocidade Alta  +  Gelo  +  Gravidade  ·  Tudo junto!",
		"bg_color":       Color(0.16, 0.10, 0.07),
		"platform_color": Color(0.72, 0.56, 0.30),
		"modifiers": {
			"speed_mult":   1.3,
			"jump_mult":    1.3,
			"gravity_mult": 1.4,
			"friction":     0.15,
			"air_control":  0.50,
		},
		"platforms": [
			[0,    620, 260, 28],   # Início
			[360,  520, 100, 18],   # Velocidade alta: não extrapole!
			[540,  420, 80,  18],   # Subida
			[710,  520, 110, 18],   # Descida
			[900,  430, 80,  18],   # Salto com gelo
			[1070, 550, 185, 22],   # CHECKPOINT 1
			[1340, 450, 90,  18],   # Subida
			[1510, 350, 80,  18],   # Topo — alto e estreito
			[1690, 450, 90,  18],   # Descida
			[1870, 550, 135, 22],   # CHECKPOINT 2
			[2060, 450, 80,  18],   # Volta a dificultar
			[2230, 350, 80,  18],   # Alto + estreito
			[2410, 450, 90,  18],   # Descida
			[2590, 550, 105, 18],   # Penúltimo
			[2770, 620, 430, 28],   # Plataforma final — Loopy aqui
		],
		"checkpoints": [
			[1130, 525],
			[1930, 525],
		],
		"hazards": [
			[450, 592, 65, 22],
			[810, 592, 72, 22],
			[1450, 592, 50, 22],
			[1990, 592, 60, 22],
			[2310, 592, 70, 22],
		],
		"exit_pos":    [3110, 580],
		"spawn_rob":   [60,   560],
		"spawn_bog":   [155,  560],
		"loopy_start": [2950, 572],
		"loopy_end":   [2950, 572],   # Loopy fica parado no final
	}
