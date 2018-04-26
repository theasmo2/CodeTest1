selected_object = argument0;

new_job = ds_map_create();

ds_map_add(new_job,"obj",selected_object);
ds_map_add(new_job,"assigned",noone);

ds_queue_enqueue(unassigned_job_list,new_job);
//ds_list_add(unassigned_job_list,new_job);
