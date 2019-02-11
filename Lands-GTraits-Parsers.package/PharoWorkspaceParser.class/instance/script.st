accessing
script

	^ super script ==> [ :values | 
				#(LandsDoIt) method: {
					values allButFirst vars.
					values stmts 
				} 
	] 