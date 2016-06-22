running
run

	[ [ self deployResult: block value ] 
		on: Error
		do: [ :exception | self deployException: exception ] ] fork.