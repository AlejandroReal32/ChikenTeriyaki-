extends KinematicBody2D

var velocidad:int = 200
var brinco:int = 600
var gravedad:int = 800
var vel:Vector2 = Vector2()
var piso:bool = false
onready var sprite = $Sprite

func _physics_process(delta):
	vel.x = 0
	if Input.is_action_pressed("ui_left"):
		vel.x -= velocidad
	if Input.is_action_pressed("ui_right"):
		vel.x += velocidad
	vel = move_and_slide(vel,Vector2.UP)
	vel.y += gravedad * delta
	pass
