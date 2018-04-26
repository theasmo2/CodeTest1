// Assign jobs from unassigned job list

// job_list_size = ds_list_size(unassigned_job_list);

// Loop through the unassigned jobs, for each job look for an idle worker. Assign to idle worker,
// remove from unassigned list and add to the assigned list.


while (ds_queue_empty(unassigned_job_list) = false){	
		for(worker_index=0; worker_index<total_workers; worker_index++){
			if (workers[|worker_index].current_state = worker_states.idle) {
				current_job = ds_queue_dequeue(unassigned_job_list);
				with workers[|worker_index] {					
					task = other.current_job;
					target = other.current_job[? "obj"];
					target.selected = false;
					mp_potential_path(job_path,(target.x + 33),(target.y + 33),8,10,true);
					current_state = worker_states.working;
				}
				current_job[? "assigned"] = workers[|worker_index];
				
				ds_list_add(assigned_job_list,current_job);
				break;
			}
		}
}

alarm_set(0,30);		