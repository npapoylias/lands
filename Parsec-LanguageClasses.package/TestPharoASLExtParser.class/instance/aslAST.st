as yet unclassified
aslAST

	^ #(exampleWithNumber: x) method: {  
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