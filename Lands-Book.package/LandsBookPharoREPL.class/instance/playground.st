not defined category
playground
PharoASLParser 
		parseview: 'at: index put: aValue
			x dict at: 3 + 4 put: ''aString''
		' using: GrayBaseAlgo new. 

PharoASLParser 
		parseview: 'at: index put: aValue
			x dict at: 3 + 4 put: ''aString''
		'.
		
PharoASLParser  
		parseval: 'at: index put: aValue
			x dict at: 3 + 4 put: ''aString''
		'.
		
PharoASLParser 
		compileval: 'method (1 to: 10) collect: [:i | (i * 2) asString]'.
		
PharoASLParser parseval: 'postcard: x

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
	^ x < y first'