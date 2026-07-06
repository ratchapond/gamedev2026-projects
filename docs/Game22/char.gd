extends Area2D

signal hit

@export var speed = 400
var screen_size
var can_die = false

func _ready():
	screen_size = get_viewport_rect().size


func _process(delta):
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("d") or Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("a") or Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("s") or Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("w") or Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)


func _on_body_entered(body):
	if not can_die:
		return

	if body.is_in_group("mob"):
		hide()
		$CollisionShape2D.set_deferred("disabled", true)
		hit.emit()


func _on_hit() -> void:
	pass # Replace with function body.
