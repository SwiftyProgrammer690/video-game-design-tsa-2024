extends Node2D

@onready var msg : Label = $Label
var texture1 = load('res://Assets/Custom Assets/place_here_complete.png')
var texture2 = load('res://Assets/Custom Assets/place_here.png')

func _on_area_2d_body_entered(body):
	if body.name == "Box4":
		msg.show()
		$place_here.texture = texture1
		Global.place_count_eye_2 = Global.place_count_eye_2 + 1


func _on_area_2d_body_exited(body):
	if body.name == "Box4":
		msg.hide()
		Global.place_count_eye_2 = Global.place_count_eye_2 - 1
		$place_here.texture = texture2


func _on_flag_area_body_entered(body):
	if body.name == "Player":
		if Global.place_count_eye_2 > 0:
			get_tree().change_scene_to_file("res://Scenes/island3.tscn")


func _on_death_body_entered(body):
	get_tree().reload_current_scene()
