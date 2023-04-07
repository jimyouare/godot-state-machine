extends Node

var fsm: StateMachine
@export var target_detection: Area2D

func enter():
	print("Hello from State 1!")

	#idle for random amout of time
	randomize()
	var time = randi() % 5 * (randf()+0.2)
	print("\t waiting for ", time)
	await get_tree().create_timer(time).timeout
	
	exit("State2")

func exit(next_state):
	fsm.change_to(next_state)

####################################################
### Optional handler functions for game loop events.
### Delete the ones that you don't need.
####################################################
func process(_delta):
	# Replace pass with your handler code
	pass

func physics_process(_delta):
	pass

func input(_event):
	pass

func unhandled_input(_event):
	pass

func unhandled_key_input(_event):
	pass


func state_notification(_what, _flag = false):
	pass
