extends RigidBody2D

var active = false

func _ready():
	add_to_group("mob")

	if has_node("AnimatedSprite2D"):
		$AnimatedSprite2D.play()

func _physics_process(delta):
	if not active:
		return

func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
