/// @description Insert description here
// You can write your code in this editor

for (index=0;index<instance_number(obj_resource);index++) {
	current_object = instance_find(obj_resource,index);
	if (current_object.selected = true and current_object.assigned = false) {
		script_execute(scr_add_job,current_object.id);
		current_object.assigned = true;
	}
}
