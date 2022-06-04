<template>
    <div class="alert alert-dark">
    	<div>
	    	<h3>
	    		Below table is updated <span href="#" class="alert-link">a few days after each deadline</span>
	    	</h3>
			<table class="table table-primary table-striped">
			  <thead>
			    <tr>
			      	<th scope="col">#</th>
			      	<th scope="col">Student Number</th>
			      	<th scope="col">
			      		<button type="button" class="btn btn-outline-dark">
							<span>
								HW1
							</span>
					      	<a href="https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW1.pdf">
					   			<box-icon type='solid' name="file-pdf" color="#F40F02"></box-icon>
				   			</a>
			      		</button>
			  		</th>
			      	<th scope="col">
			      		<button type="button" class="btn btn-outline-dark">
							<span>
								HW2
							</span>
					      	<a href="https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW2.pdf">
					   			<box-icon type='solid' name="file-pdf" color="#F40F02"></box-icon>
				   			</a>
			      		</button>
			  		</th>
			      	<th scope="col">
			      		<button type="button" class="btn btn-outline-dark">
							<span>
								HW3
							</span>
					      	<a href="https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW3.pdf">
					   			<box-icon type='solid' name="file-pdf" color="#F40F02"></box-icon>
				   			</a>
			      		</button>
			  		</th>
					<th scope="col">
			      		<button type="button" class="btn btn-outline-dark">
							<span>
								HW4(SQL)
							</span>
					      	<a href="https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW4(SQL).pdf">
					   			<box-icon type='solid' name="file-pdf" color="#F40F02"></box-icon>
				   			</a>
			      		</button>
			  		</th>	
					<th scope="col">
			      		<button type="button" class="btn btn-outline-dark">
							<span>
								HW5(SQL)
							</span>
					      	<a href="https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW5(SQL).pdf">
					   			<box-icon type='solid' name="file-pdf" color="#F40F02"></box-icon>
				   			</a>
			      		</button>
			  		</th>
					<th scope="col">
			      		<button type="button" class="btn btn-outline-dark">
							<span>
								HW6
							</span>
					      	<a href="https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW6.pdf">
					   			<box-icon type='solid' name="file-pdf" color="#F40F02"></box-icon>
				   			</a>
			      		</button>
			  		</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr v-for="(student, index) in students">
			      <th scope="row">{{ index+1 }}</th>
			      <td>{{ student.id }}</td> 
			      <td>{{ student.HW1 }}</td>
			      <td>{{ student.HW2 }}</td>
			      <td>{{ student.HW3 }}</td>
			      <td>{{ student.HW4 }}</td>
			      <td>{{ student.HW5 }}</td>
			      <td>{{ student.HW6 }}</td>
			    </tr>
			  </tbody>
			</table>
    	</div>
    </div>
</template>

<script>
export default {
	data(){
		return{
			students:[]
		}
	},
  	mounted() {
	    this.$nextTick(()=>{
		  	this.$axios.$get('https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks.json')
	        .then(response=>this.students=response)
	    })
  	}
}
</script>