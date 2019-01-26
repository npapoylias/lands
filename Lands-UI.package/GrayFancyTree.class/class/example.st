example
example

	"consider adding selectors that describe the relationships ie
	give {nodes} with: #edgeSelector to: #childSelector; edgeLabel: #edgeLabelSelector; nodeLabel: #nodeLabelSelector
	and parametrize the lable as well"

	|anObject|

	anObject := Object new.
	
	^ (GrayFancyTree new 
	with: { 
		anObject -> '1' -> 'b' .  
		anObject -> '2' -> 'c' .
		'c' -> '3' -> 'd' .
		'c' -> '4' -> 'e' .
		'b' -> '5' -> 'f'
	};
	view) open