tests
testMod4CollatzPrint

	self assert: (CalcEvaluator compileval: '
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
	') equals: '7 , 11 , 17 , 13 , 10 , 5 , 4 , 2 , 1'