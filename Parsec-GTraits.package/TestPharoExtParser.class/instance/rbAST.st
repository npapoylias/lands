as yet unclassified
rbAST

	^ RBParser parseMethod: 'exampleWithNumber: x
	 <menu: 3 priority: #''-34''>
    | y |
    true & false not & (nil isNil) ifFalse: [self halt].
    y := self size + super size.
	{ $a . #a . 1 . 1.0 class}.
    #($a #a 1 1.0)
        do: [ :each | |t|
            Transcript show: (each class name);
                       show: '' ''].
    ^x < y'