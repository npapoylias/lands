parsing
parse

"The reason the ordered version is slower (especially on
errors at the end) is because there is only memoization
for failures not of successes (it tries all possible routes
again and again)"

PharoMOGrammar new 
	parse: 'at: index put: aValue
		<menu: 3 priority: #''-34''>
		|x y z|
		#(-422434.3342e-10 343434 -10rA0 32424s at:put: selector ''string'' [3] (car (cdr list)))
		' using: algo new "log"; defaultView.
		
PharoMOGrammar new 
	parse: 'method
		rcv at: 3 class	
	'using: algo new "log"; defaultView.

PharoMOGrammar new 
	parse: 'method
		3 + 4 class	
	'using: algo new "log"; defaultView.


"very very nice example this one, for the difference cases, be mindfull of the temp
and the implicit cases"
PharoMOGrammar new 
	parse: 'at: index put: aValue
		x dict size at: 3 + 4 + 6 put: (''meh'')
		'using: algo new "log"; defaultView