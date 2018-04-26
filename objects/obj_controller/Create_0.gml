/// @description Insert description here
// You can write your code in this editor

// The following Enum is used for tracking worker object states
enum worker_states {
	idle,
	working,
	sleeping
}

// The following will create a new object instance for total_workers and track in workers list
total_workers = 5;

workers = ds_list_create();
for(index=0; index<total_workers; index++){
	workers[|index] = instance_create_layer(random(room_width),random(room_height),"Instances",obj_worker);
}

// This list tracks jobs
assigned_job_list = ds_queue_create();
unassigned_job_list = ds_list_create();

alarm_set(0,30);