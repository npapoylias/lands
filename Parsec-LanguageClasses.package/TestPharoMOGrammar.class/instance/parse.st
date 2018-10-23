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
		
	PharoMOGrammar new
		parse: 'postcard: x
		<menu: 3 priority: #''-34''>
   		|y d| 
		y :=  #[100] + self bSize + super bSize.
		d := Dictionary new.
 	 	true & false not & nil isNil ifTrue: [  
  			|inter step| 
			inter := ({$a. #a class. -4e-2. -10r2. 3s2} intersection: #($b b -0.04 -2 3))
				groupedBy: [ :i | i class ] having: [ :group | group size > 1 ].
			step := [:i | y := y + i ].
			[y first + x < 255] whileTrue: [step value: x].
			inter do: [ :item | 
				|t| t := item class name.
				d at: t put: item. 
         		Transcript show: t; show: '' ''; show: item; show: '' ''
			].
		] ifFalse: [self halt].
		^ x < y first' using: algo new; defaultView