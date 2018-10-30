as yet unclassified
altMixedPostcard: x

  'altMixedPostcard(x): "remember to include the signature"
	 	<menu: 3 priority: #''-34''>
    	|y|  
	 	y := #[100] + self bSize + super.bSize().
	 	var d := Dictionary new.
    	true & false.not() & nil.isNil() ifTrue: [ 
			var inter := {$a. #a class. -4e-2. -10r2. 3s2}.intersetion(#($b b -0.04 -2 3))
				groupedBy: [:i| i.class() ] having: [:group | group.size() > 1].
			var step := f(i) { y := y + i }.
			while x + y.first() < 255 { step value: x }.
    		for item in inter do: { |t|
        		t := item.class() name.
		  		d[t] := item.
        		Transcript.show(t);show('' '');show: item;show('' '')
	 		}
	 	] ifFalse: [ self halt ] 
    	^ x < y.first()'