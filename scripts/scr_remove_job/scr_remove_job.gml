completed_job = argument0;
assigned_jobs = ds_list_size(assigned_job_list);

for(index=0;index<assigned_jobs;index++){
	current_job = assigned_job_list[| index];
	if (current_job[? "obj"] = completed_job) {
		ds_list_delete(assigned_job_list,index);
		ds_map_destroy(current_job);
		break;
	}
}
