tests
testASLEquivalencePostcard

	"fix the trimmed end for comments"

	self assert: (MogAslStParser new parse: 'exampleWithNumber: x
	 <menu: 3 priority: #''-34''>
    | y |
    true & false not & (nil isNil) ifFalse: [self halt].
    y := self size + super size.
	{ $a . #a . 1 . 1.0 class}.
    #($a #a 1 1.0)
        do: [ :each | |t|
            Transcript show: (each class name);
                       show: '' ''].
    ^x < y') eval first = (

#(exampleWithNumber: x) method: {  
	#(menu: 3 priority: #'-34') pragma.
	#(y) temps.
	true "lit optionally" |> {#& . false |> #not } |> {#& . nil |> #isNil } |> {#ifFalse: . { #self |> #halt } block }.
	#y === (#self |> #size |> { #+ . #super |> #size }).
	{ $a . #a . 1 . 1.0 |> #class} array.
	#($a #a "a" 1 1.0) |> { #do: .  "or here { $a . #a . 1 . 1.0} array for dynArray"
		{ 
			#(each) args . #(t) temps. 
			Transcript |> { {#show: . #each var |> #class |> #name} . { #show: . ' '  } }  
		} block.	
	}.
	(#x var |> { #< . #y var }) return
}

).