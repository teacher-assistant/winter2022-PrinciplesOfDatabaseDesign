<template>
	<nav class="navbar center navbar-expand-lg navbar-dark bg-dark rounded">
	  <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item" v-for="section in sections">
	        <NuxtLink class="nav-link d-flex align-items-center gap-1" :to="section.to">
	        	{{ section.text }}
	        	<box-icon type='solid' :name="section.icon" color='#ffffff'></box-icon>
	        </NuxtLink >
	      </li>
	    </ul>
	  </div>
	</nav>
</template>

<script>
export default {
	data(){
		return{
			sections:[
				{
					'to':'/',
					'icon':'book-reader',
					'text':'Home page'
				},
				{
					'to':'/Homeworks/',
					'icon':'edit-alt',
					'text':'HomeWorks'
				},
				{
					'to':'/sessions/',
					'icon':'calendar',
					'text':'Discussion Sessions Calender'
				}
			]
		}
	}
}
</script>