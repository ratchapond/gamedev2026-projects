extends Node

@export var mob_scene: PackedScene

var score = 0
var game_started = false


func _ready():
	game_started = false
	score = 0

	$MobTimer.stop()
	$ScoreTimer.stop()
	$StartTimer.stop()

	$CanvasLayer/GameOverLabel.hide()
	$CanvasLayer/StartButton.show()
	
	$Char.hide()
	$CanvasLayer/ScoreLabel.text = "0"


# ---------------- START BUTTON ----------------
func _on_start_button_pressed():
	new_game()
	$CanvasLayer/StartButton.hide()
	$CanvasLayer/GameOverLabel.hide()
	$CanvasLayer/NAME.hide()

# ---------------- NEW GAME ----------------
func new_game():
	game_started = true
	score = 0

	$CanvasLayer/ScoreLabel.text = "0"

	$Char.position = $StartPosition.position
	$Char.show()

	$Char.can_die = false
	$Char/CollisionShape2D.set_deferred("disabled", false)

	$StartTimer.start()


# ---------------- GAME OVER ----------------
func game_over():
	game_started = false

	$MobTimer.stop()
	$ScoreTimer.stop()

	print("Game Over! คะแนน =", score)

	$CanvasLayer/GameOverLabel.show()
	$CanvasLayer/StartButton.show()

	$Char.hide()


# ---------------- START TIMER ----------------
func _on_start_timer_timeout():
	if not game_started:
		return

	$Char.can_die = true

	$MobTimer.start()
	$ScoreTimer.start()   # 🔥 START แค่ครั้งเดียวพอ


# ---------------- SCORE TIMER ----------------
func _on_score_timer_timeout():
	if not game_started:
		return

	score += 1
	$CanvasLayer/ScoreLabel.text = str(score)


# ---------------- MOB SPAWN ----------------
func _on_mob_timer_timeout():
	if not game_started:
		return

	var mob = mob_scene.instantiate()

	var mob_spawn_location = $MobPath/MobSpawnLocation
	mob_spawn_location.progress_ratio = randf()

	var direction = mob_spawn_location.rotation + PI / 2
	direction += randf_range(-PI / 4, PI / 4)

	mob.position = mob_spawn_location.position
	mob.rotation = direction

	var velocity = Vector2(randf_range(150.0, 250.0), 0)
	mob.linear_velocity = velocity.rotated(direction)

	add_child(mob)


# ---------------- PLAYER HIT ----------------
func _on_char_hit():
	game_over()


func _on_screenshot_20260626172240_hidden() -> void:
	$CanvasLayer/NAME.hide()
