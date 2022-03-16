<template>
	<div class="container d-grid gap-2">
    	<div></div>
		<MainCard title="Homeworks Status" />
		<HomeworkStatusTable />
	</div>
</template>

<script>
import 'boxicons'
export default {
	head(){
  		return{
  			title:'Homeworks Status'
  		}
  	}
}
</script>
