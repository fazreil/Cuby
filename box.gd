extends MeshInstance3D

var redShader = ShaderMaterial

func _ready():
	redShader = ShaderMaterial.new()
	

func _input(event):
	if event is InputEventMouseButton:
		if event.double_click:
			print("fuck")
