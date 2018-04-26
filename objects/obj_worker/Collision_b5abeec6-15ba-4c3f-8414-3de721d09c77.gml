/// @description Insert description here
// You can write your code in this editor


if (target = other){
	other.assigned = false;
	current_state = worker_states.idle;
	controller = instance_find(obj_controller,0);
	with controller {
		script_execute(scr_remove_job,other.target);
	}
}


