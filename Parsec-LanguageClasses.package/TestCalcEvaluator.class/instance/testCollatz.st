tests
testCollatz
	|results|

	"check ambiguity when considering expressions as statements"

	results := CalcEvaluator new parse: '
		x=7
		print x 
		while(x > 1) { 
			if(x%2==0) 
				if(x%4==0) x = x / 4 
				else x = x / 2
			else x = (3*x+1) / 2
			print " , " , x
		}	
	'.

	self assert: results trees size = 8.
	self assert: results results first value key = {#x -> 1} asDictionary