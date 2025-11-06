class_name ToolButton
extends TextureButton

@export var tool : PlayerTools.Tool
@export var seed : CropData

@onready var quantity_text : Label = $QuantityText

func _ready():
	quantity_text.text = ""
	pivot_offset = size / 2


func _on_pressed():
	pass # Replace with function body.


func _on_mouse_entered() -> void:
	scale.x = 1.05
	scale.y = 1.05


func _on_mouse_exited() -> void:
	scale.x = 1
	scale.y = 1
