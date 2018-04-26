/// @description Insert description here
// You can write your code in this editor

#region object_variable_Defenitions

// variables to control object state
current_state = worker_states.idle;
current_state_time = 1;

states[worker_states.idle] = scr_worker_state_idle;
states[worker_states.working] = scr_worker_state_working;
states[worker_states.sleeping] = scr_worker_state_sleeping;

// variables for object status
hunger = 0;
tiredness = 0;
target = 0;
task = 0;

// variables to manage time

alarm_set(0,30);

#endregion
