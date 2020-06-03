extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	# automatically choosing this button at first
	$VBoxContainer/Controls.grab_focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	if $VBoxContainer/Back.is_hovered() == true:
		$VBoxContainer/Back.grab_focus()
	if $VBoxContainer/Controls.is_hovered() == true:
		$VBoxContainer/Controls.grab_focus()
	if $VBoxContainer/Fullscreen.is_hovered() == true:
		$VBoxContainer/Fullscreen.grab_focus()
	if $VBoxContainer/Sound.is_hovered() == true:
		$VBoxContainer/Sound.grab_focus()
	if $VBoxContainer/About.is_hovered() == true:
		$VBoxContainer/About.grab_focus()


func _on_Button_pressed():
	get_tree().change_scene("res://SCENES/Title screen.tscn")


func _on_Controls_pressed():
	get_tree().change_scene("res://SCENES/Title screen.tscn")


func _on_Fullscreen_pressed():
	get_tree().change_scene("res://SCENES/Title screen.tscn")


func _on_Sound_pressed():
	get_tree().change_scene("res://SCENES/Title screen.tscn")


func _on_About_pressed():
	get_tree().change_scene("res://SCENES/Title screen.tscn")
