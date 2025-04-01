extends CharacterBody2D

var count: int = 0

@export var velocitat: int = 500


func _ready() -> void:
	pass
	#position = Vector2(0,0)
	
	
func _process(delta: float) -> void:
	var direccio: Vector2 = Vector2.ZERO
	
	#rotate(0.1)
	#rotation += 10
	
	direccio = Input.get_vector("mou_esquerra","mou_dreta","mou_dalt","mou_baix")
	
	#if Input.is_action_pressed("mou_dreta"):
		#direccio += Vector2.RIGHT
	#
	#position = position + direccio.normalized() * velocitat * delta
	velocity = direccio*velocitat
	move_and_slide()
	#position = position + direccio * velocitat * delta
	
	anima(velocity,delta)
	
func anima(velocitat: Vector2, delta:float):
	$Pare/Fill.rotation += 0.01 * velocitat.x * delta
	
func _physics_process(delta: float) -> void:
	pass
	#if position == get_global_mouse_position():
		#position = Vector2(1152/2, 648/2)
		#count += 1
#
	#print("CONTADOR: ",count)
	#position = position.move_toward(Vector2(get_global_mouse_position().x, get_global_mouse_position().y), delta*1000)
#
	
	
	
