// Assign jobs from unassigned job list

// job_list_size = ds_list_size(unassigned_job_list);

// Loop through the unassigned jobs, for each job look for an idle worker. Assign to idle worker,
// remove from unassigned list and add to the assigned list.

/* if ( job_list_size > 0 ) {
	for(job_index=0; job_index<job_list_size; job_index++) {
		current_job = unassigned_job_list[|0];
		for(worker_index=0; worker_index<total_workers; worker_index++){
			if (workers[|worker_index].current_state = worker_states.idle) {
				workers[|worker_index].current_state = worker_states.working;
				workers[|worker_index].task = current_job;
				workers[|worker_index].target = current_job[? "obj"];
				current_job[? "assigned"] = workers[|worker_index];
				workers[|worker_index].target.selected = false;
				ds_list_add(assigned_job_list,current_job);
				ds_list_delete(unassigned_job_list,0);
				break;
			}
		}
	}
} */

while (!ds_queue_empty(unassigned_job_list)){	
		for(worker_index=0; worker_index<total_workers; worker_index++){
			if (workers[|worker_index].current_state = worker_states.idle) {
				current_job = ds_queue_dequeue(unassigned_job_list);
				workers[|worker_index].current_state = worker_states.working;
				workers[|worker_index].task = current_job;
				workers[|worker_index].target = current_job[? "obj"];
				current_job[? "assigned"] = workers[|worker_index];
				workers[|worker_index].target.selected = false;
				ds_list_add(assigned_job_list,current_job);
				break;
			}
		}
}

alarm_set(0,30);		