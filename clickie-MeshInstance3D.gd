extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func changeColorTo(color: Color):
	var material: StandardMaterial3D
	material = StandardMaterial3D.new()
	material.albedo_color = color
	self.set_surface_override_material(0,material)

func changeColorToBlue():
	changeColorTo(Color.BLUE)
	
func changeColorToRed():
	changeColorTo(Color.RED)


func _on_bm_mouse_exited():
	pass # Replace with function body.
