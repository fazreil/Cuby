extends MeshInstance3D

var booked: bool
var xmesh
var omesh

# Called when the node enters the scene tree for the first time.
func _ready():
	booked = false
	xmesh = load("res://mesh/x.obj")
	omesh = load("res://mesh/o.obj")
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
	print("changing to blue")
	
	
func changeColorToRed():
	if(!isBooked()):
		changeColorTo(Color.RED)
		print("changing to red")

func isBooked():
	return booked
	
func book():
	booked = true

func _on_box_input_event(camera, event, position, normal, shape_idx):
	print(event)
	if(event is InputEventMouseButton):
		if(event.is_pressed()):
			book()
			print("this "+self.to_string()+" has been booked");print(isBooked());
#	event : Input 
#	book()
	pass
