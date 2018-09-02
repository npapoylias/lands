parsing
parse

	StEpeg new 
	parse: 'at: index put: aValue
		<menu: 3 priority: #''-34''>
		|x y z|
		#(-422434.3342e-10 343434 -10rA0 32424s at:put: selector ''string'' [3] (car (cdr list)))
		' using: algo new "log; defaultView".
		
StEpeg new 
	parse: 'method
		rcv at: 3 class	
	'using: algo new "log; defaultView".

StEpeg new 
	parse: 'method
		3 + 4 class
	'using: algo new "log; defaultView".

StEpeg new 
	parse: 'at: index put: aValue
		x dict at: 3 + 4 put: (''meh'')
		'using: algo new "log; defaultView"