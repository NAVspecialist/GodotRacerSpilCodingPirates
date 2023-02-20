extends RigidBody2D

export var STYRING = 20.0 
export var HASTIGHED = 5.0
export var FRIKTION = 50.0
var ZOOM = 0.5	
var Zoomfaktor = 0


func _physics_process(delta):
	input_key()
	bilkamera()
	
func input_key():
	if Input.is_action_pressed("Venstre"):
		apply_torque_impulse(-STYRING)
	if Input.is_action_pressed("Hoejre"):
		apply_torque_impulse(STYRING)		
	if Input.is_action_pressed("Frem"):
		apply_central_impulse(Vector2(0,-HASTIGHED).rotated(rotation))
	if Input.is_action_pressed("Bak"):
		apply_central_impulse(Vector2(0,HASTIGHED).rotated(rotation))

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func bilkamera():
	Zoomfaktor = ZOOM + linear_velocity.length()/1000
	$Camera2D.zoom = lerp($Camera2D.zoom,Vector2(Zoomfaktor,Zoomfaktor),0.01)

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	
func _on_StartMaal_body_entered(body):
	if body.is_in_group("Spiller"):
		print('Nice, Du har passeret start')
