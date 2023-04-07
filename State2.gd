extends Node

var fsm: StateMachine

func enter():
	print("Hello from State 2!")
	#idle for random amout of time
	randomize()
	var time = randi() % 5 * (randf()+0.2)
	print("\t waiting for ", time)
	await get_tree().create_timer(time).timeout
	exit()

func exit():
	# Go back to the last state
	fsm.back()
