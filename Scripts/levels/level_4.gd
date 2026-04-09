extends RefCounted
class_name Level4Data

## Fase 4 - Becos Estreitos
## Controle aereo quase nulo. Cada pulo precisa ser planejado.

static func get_data() -> Dictionary:
	return {
		"name": "Becos Estreitos",
		"description": "Pelos becos... cada pulo precisa ser calculado!\nSem controle no ar — planeje antes de saltar!",
		"modifier_hint": "Controle Aéreo Mínimo  ·  Pense antes de pular!",
		"bg_color":       Color(0.09, 0.09, 0.11),
		"platform_color": Color(0.42, 0.42, 0.36),
		"modifiers": {
			"speed_mult":   0.9,
			"jump_mult":    1.1,
			"gravity_mult": 1.0,
			"friction":     1.0,
			"air_control":  0.12,
		},
		"platforms": [
			[0,    620, 230, 28],   # Início
			[310,  535, 80,  18],   # Estreita
			[460,  450, 70,  18],   # Mais estreita
			[605,  535, 100, 18],   # Ligeiramente maior
			[780,  450, 70,  18],   # Estreita de novo
			[920,  560, 185, 22],   # CHECKPOINT 1 (larga)
			[1180, 470, 78,  18],   # Retoma dificuldade
			[1330, 380, 72,  18],   # Alta
			[1480, 480, 88,  18],   # Descida
			[1640, 560, 180, 22],   # CHECKPOINT 2 (larga)
			[1900, 470, 78,  18],   # Volta a ser difícil
			[2050, 375, 72,  18],   # Alta
			[2200, 480, 90,  18],   # Descida
			[2370, 560, 145, 18],   # Perto da saída
			[2560, 620, 330, 28],   # Final
		],
		"checkpoints": [
			[980,  535],
			[1700, 535],
		],
		"hazards": [
			[395, 592, 45, 22],
			[850, 592, 55, 22],
			[1260, 592, 55, 22],
			[1820, 592, 60, 22],
		],
		"exit_pos":    [2800, 580],
		"spawn_rob":   [50,   560],
		"spawn_bog":   [130,  560],
		"loopy_start": [2660, 572],
		"loopy_end":   [3080, 572],
	}
