not defined category
playground
ast := PharoASLParser parseMethod: 'exampleWithNumber: x
	 <menu: 3 priority: #''-34''>
    | y |
    true & false not & (nil isNil) ifFalse: [self halt].
    y := self size + super size.
		{ $a . #a . 1 . 1.0 class}.
    #($a #a 1 1.0)
        do: [ :each | |t|
            Transcript show: (each class name);
                       show: '' ''].
    ^x < y'.

asl := #(exampleWithNumber: x) method: {  
			#(menu: 3 priority: #'-34') pragma.
			#(y) temps.
			true  |> {#& . false |> #not } |> {#& . nil |> #isNil } |> {
				#ifFalse: . { #self |> #halt } block 
			}.
			#y === (#self |> #size |> { #+ . #super |> #size }).
			{ $a . #a . 1 . 1.0 |> #class} array.
			#($a #a 1 1.0) |> { #do: .  
				{ 
					#(each) args . #(t) temps. 
					Transcript |> { {#show: . #each var |> #class |> #name} . { #show: . ' '  } } 
				} block.	
			}.
			(#x var |> { #< . #y var }) return
}.
	
self assert: ast equals: asl.