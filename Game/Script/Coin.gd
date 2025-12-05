extends Area2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@export var value = 1

# 1. Bikin variabel penanda (status awal: belum diambil)
var collected = false 

func _on_body_entered(body):
	# 2. Cek dulu: Kalau udah diambil, STOP! Jangan lanjut ke bawah.
	if collected == true:
		return 
	
	# 3. Kalau belum diambil, langsung tandain "udah diambil"
	collected = true
	
	# --- Kode lama kamu di bawah ini ---
	animated_sprite_2d.play("Collected")
	var player = body as PlayerController
	if player:
		player.CollectedCoin(value)
