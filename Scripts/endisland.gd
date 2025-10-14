extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_bonus_1_body_entered(body):
	if body.name == "Player (Topdown)":
		get_tree().change_scene_to_file("res://Scenes/bonus_level_1.tscn")


func _on_bonus_2_body_entered(body):
	if body.name == "Player (Topdown)":
		get_tree().change_scene_to_file("res://Scenes/bonus_level_2.tscn")
