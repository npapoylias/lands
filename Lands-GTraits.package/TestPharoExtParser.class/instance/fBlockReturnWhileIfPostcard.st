as yet unclassified
fBlockReturnWhileIfPostcard

	^ 'postcard: x
	<menu: 3 priority: #''-34''>
   |y d| 
	y :=  #[100] + self bSize + super bSize.
	d := Dictionary new.
   if true & false not & nil isNil {   
  		|inter step| 
		inter := ({$a. #a class. -4e-2. -10r2. 3s2} intersection: #($b b -0.04 -2 3))
			groupedBy: [ :i | i class ] having: [ :group | group size > 1 ].
		step := f(i) { y := y + i }.
		while y first + x < 255. step value: x.
		inter do: [ :item | 
			|t| t := item class name.
			t := t copyFrom: 1 to: t size -1.
			d at: t put: item. 
         Transcript show: t; show: '' ''; show: item; show: '' ''
		]
	} else self halt.
	return x < y first'