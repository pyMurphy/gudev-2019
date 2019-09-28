extends Control

func _ready():
	get_node('Exit').connect('pressed',self,'_on_Exit_pressed')
	get_node('Start').connect('pressed',self,'_on_Start_pressed')

func _on_Exit_pressed():
	get_tree().quit()

func _on_Start_pressed():
	get_tree().change_scene('res://Game.tscn')

func _on_Start_mouse_entered():
	get_node("Start").rect_scale += Vector2(0.01,0.01)

func _on_Start_mouse_exited():
	get_node("Start").rect_scale -= Vector2(0.01,0.01)
