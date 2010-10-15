<cfcomponent displayname="Customer" output="false" hint="I act as a Controller for this example.">

	<cffunction 
		name="create" 
		access="remote" 
		output="false" 
		returnformat="json"  
		hint="I manage the creation of a customer. For this example, I'm just simulating it.">
		
		<cfargument name="customer_name">
		
		<cfreturn { 
			'success' : true, 
			'display' : 'The customer ' & arguments.customer_name & '  was successfully created', 
			'display_context' : '##main', 
			'data' : { 'initiating_request' : 'Customer.create', 
			'customer_name' : arguments.customer_name,
			'event_name' : 'customer_added'
			} 
		}>
	</cffunction>

</cfcomponent>