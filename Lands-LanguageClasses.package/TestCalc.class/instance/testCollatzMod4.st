tests
testCollatzMod4
	|results|

	"check ambiguity when considering expressions as statements"

	results := CalcEvaluator new parse: '
		x=7
		print x 
		while(x > 2) {
			mod4 = x%4
			mod2 = x%2
			if(mod2==0) 
				if(mod4==0) x = x / 4 
				else x = (3*x+2)/4
			if(mod2==1) 
				if(mod4==1) x = (3*x+1) / 4 
				else x = (9*x+5)/4
			print " , " , x
		}	
	' using: GrayBaseAlgo new.

	self assert: results trees size = 32.
	