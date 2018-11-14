as yet unclassified
altLiseMixedPostcard(x): 
	<menu: 3 priority: #'-34'> 
		
   var y := (:+ #[100] (:self bSize)) + super.bSize().  
	var d := (:dict '()).  	
			
	if true & (:not false) & nil isNil {
		|inter step|
		inter := (:intersection (list $a ('class #a) -4e-2 -10r2 3s2) (list $b #b -0.04 -2 3))
			groupedBy: f(i){i.class()} having: [:group | group.size() > 1].
		
		step := f(i) { y := y + i }.
		
		while (:< (+ (:y.first()) x) 255). step(x).
    	
		for item in inter do: { 
        	var t := (item class).name().
			t := t[1::(:- (size t) 1)].
		  	d[t] := item.
        	Transcript.show(t);.show(' ');show: item;.show(' ')
	 	}
	 } else self halt. 
    
	return x < y first