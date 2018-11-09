tests
testCollatzWithIfThenAmb
	|results|

	"check ambiguity when considering expressions as statements"

	results := CalcEvaluator new parse: '
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

	self assert: results trees size = 32.
	"this is an intresting case where some amb are related with the halting problem
	mitigate with a fixed value timer"
	"self assert: results results first value key = {#x -> 1} asDictionary"