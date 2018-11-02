parsing
parseUnordered

"Larger examples will blow up memory for actions and viewing"

PharoMOGrammar new 
	parse: 'at: index put: aValue
		<menu: 3 priority: #''-34''>
		|x y z|
		#(-422434.3342e-10 343434 -10r9 32424s at:put: selector ''string'' [3] (car (cdr list)))
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
		'using: algo new "log"; defaultView.
		
PharoMOGrammar new
		parse: 'exampleWithNumber: x
    	"A comment"
	 	<menu: 3 priority: #''-34''>
    	| y |
    	true & false not & (nil isNil) ifFalse: [self halt].
    	y := self size + super size.
    	#($a #a "a" 1 1.0)
        do: [ :each |
            Transcript show: (each class name);
                       show: '' ''].
    	^	x < y' using: algo new "log"; defaultView.