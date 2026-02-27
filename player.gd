extends Area2D

@export var kecepatan = 300.0
var screen_size
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("jalankanan"):
		velocity.x += 1
	if Input.is_action_pressed("jalankiri"):
		velocity.x -= 1
	if Input.is_action_pressed("atas"):
		velocity.y -= 1
	if Input.is_action_pressed("bawah"):
		velocity.y += 1
		
	if velocity.length() > 0 :
		velocity = velocity.normalized() * kecepatan
		$AnimatedSprite2D.play()
	else :
		$AnimatedSprite2D.stop()
	pass
	
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	if velocity.x != 0 :
		$AnimatedSprite2D.animation = "kanan"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.y < 0
		
		if velocity.x < 0 :
			$AnimatedSprite2D.flip_h = true
		else :
			$AnimatedSprite2D.flip_h = false
		
		
		
		
