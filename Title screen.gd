extends Node

var scene_path_to_load
# Called when the node enters the scene tree for the first time.
func _ready():
	
	# timer
	yield(get_tree().create_timer(0.5), "timeout")
	# button 1 will be selected by default
	$MarginContainer/VBoxContainer/VBoxContainer/Play.grab_focus() 
	#$AudioStreamPlayer.play()
	
	

func _physics_process(_delta):
	# hovering will focus on it with this func below
	if $MarginContainer/VBoxContainer/VBoxContainer/Play.is_hovered() == true:
		#Mainmenumusic.stop()
		$Control.hide()
		$MarginContainer/VBoxContainer/VBoxContainer/Play.grab_focus() 
	if $MarginContainer/VBoxContainer/VBoxContainer/Settings.is_hovered() == true:
		$Control.hide()
		$MarginContainer/VBoxContainer/VBoxContainer/Settings.grab_focus() 
	if $MarginContainer/VBoxContainer/VBoxContainer/Exit.is_hovered() == true:
		$Control.hide()
		$MarginContainer/VBoxContainer/VBoxContainer/Exit.grab_focus() 

func _on_Play_pressed():
	get_tree().change_scene("res://SCENES/Start.tscn")
	$Control.hide()


func _on_Settings_pressed():
	get_tree().change_scene("res://SCENES/Settings.tscn")
	$Control.hide()

func _on_Exit_pressed():
	get_tree().quit()
	$Control.hide()




	 # Replace with function body.
