extends ParallaxBackground


func _physics_process(delta):
	scroll_offset.x -= 400 * delta;
	pass

