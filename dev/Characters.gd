extends Control

func _ready():
	pass

func _on_guards_mouse_entered():
	get_node("guards").rect_scale += Vector2(0.01,0.01)

func _on_guards_mouse_exited():
	get_node("guards").rect_scale -= Vector2(0.01,0.01)

func _on_ar_mouse_entered():
	get_node("ar").rect_scale += Vector2(0.01,0.01)
	
func _on_ar_mouse_exited():
	get_node("ar").rect_scale -= Vector2(0.01,0.01)

func _on_sniper_mouse_entered():
	get_node("sniper").rect_scale += Vector2(0.01,0.01)

func _on_sniper_mouse_exited():
	get_node("sniper").rect_scale -= Vector2(0.01,0.01)

func _on_nerf_mouse_entered():
	get_node("nerf").rect_scale += Vector2(0.01,0.01)
	
func _on_nerf_mouse_exited():
	get_node("nerf").rect_scale -= Vector2(0.01,0.01)