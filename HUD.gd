extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_close_panel_pressed():
	$QuestPanel.visible = false


func _on_area_3d_quest_item_1_body_entered(body):
	$QuestPanel.visible = true
