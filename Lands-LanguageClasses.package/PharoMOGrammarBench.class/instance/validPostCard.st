as yet unclassified
validPostCard

	^ 'postcard: x

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