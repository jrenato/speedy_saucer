extends Node2D

@onready var win_label = %WinLabel
@onready var player = %Player


func _ready():
	win_label.visible = false


func _on_maze_body_exited(body):
	get_tree().reload_current_scene()


func _on_win_area_body_entered(body):
	win_label.visible = true
	player.linear_velocity = Vector2.ZERO
	player.won = true
