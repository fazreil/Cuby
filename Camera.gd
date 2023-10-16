extends Camera3D

# Declare member variables here. Examples:
var movement = 0.5
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if event is InputEventMouseMotion:
		rotate(Vector3.UP, event.relative.x * 0.0001)
		rotate(Vector3.RIGHT, event.relative.y * 0.0001)

func _physics_process(delta):
	if(Input.is_key_pressed(KEY_W)):
		self.position.z=self.position.z-movement
	if(Input.is_key_pressed(KEY_A)):
		self.position.x=self.position.x-movement
	if(Input.is_key_pressed(KEY_S)):
		self.position.z=self.position.z+movement
	if(Input.is_key_pressed(KEY_D)):
		self.position.x=self.position.x+movement
