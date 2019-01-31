not defined category
playground
CalcEvaluator parseview: '
			if(x) if(y) z=1+2*3 else z=0 
' using: GrayBaseAlgo new.

CalcEvaluator parseview: '
			if(x) if(y) z=1+2*3 else z=0 
' using: GrayMixedOrderedFilteredAlgo new.
	
CalcEvaluator parseval: '
		print clear
		x=7
		print x 
		while(x > 1) { 
			if(x%2==1)
				if(x%4==1) x = (3*x+1) / 2 
				else x = 3*x+1
			x = x / 2
			print " , " , x
		}	
	'.
	
CalcEvaluator compileval: '
		print clear
		x=7
		print x 
		while(x > 1) { 
			if(x%2==1)
				if(x%4==1) x = (3*x+1) / 2 
				else x = 3*x+1
			x = x / 2
			print " , " , x
		}	
	'.