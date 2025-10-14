extends Node2D

@onready var msg : Label = $Label
@onready var msg2 : Label = $Label24
var texture1 = load('res://Assets/Custom Assets/place_here_complete.png')
var texture2 = load('res://Assets/Custom Assets/place_here.png')

func _on_area_2d_body_entered(body):
	if body.name == "Box4":
		msg.show()
		$place_here.texture = texture1
		Global.place_count_eye_5 = Global.place_count_eye_5 + 1

func _on_area_2d_body_exited(body):
	if body.name == "Box4":
		msg.hide()
		Global.place_count_eye_5 = Global.place_count_eye_5 - 1
		$place_here.texture = texture2

func _on_area_2d_2_body_entered(body):
	if body.name == "Box":
		msg2.show()
		$place_here2.texture = texture1
		Global.place_count_eye_5 = Global.place_count_eye_5 + 1
	
func _on_area_2d_2_body_exited(body):
	if body.name == "Box":
		msg2.hide()
		Global.place_count_eye_5 = Global.place_count_eye_5 - 1
		$place_here2.texture = texture2

func _on_flag_area_body_entered(body):
	if body.name == "Player":
		if Global.place_count_eye_5 == 2:
			get_tree().change_scene_to_file("res://Scenes/victory.tscn")

func _on_death_body_entered(body):
	get_tree().reload_current_scene()

