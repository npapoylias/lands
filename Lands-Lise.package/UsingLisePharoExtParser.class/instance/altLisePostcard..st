as yet unclassified
altLisePostcard(x): 
	<menu: 3 priority: #'-34'>
		
   var y := (:+ #[100] (:self.bSize())) + super.bSize().
	(:define d (:Dictionary.new())). 
    	
	if true & (:not false) & nil.isNil() { 
		var inter := (:intersection (list $a ('class #a) -4e-2 -10r2 3s2) (list $b #b -0.04 -2 3))
			.groupedBy(f(i){i.class()}.having=(:lambda (group) (> (size group) 1))).
			
		var step := (:lambda (i) (set y (+ y i))).
			
		while (:< (+ (:y.first()) x) 255). step(x).
    		
		for item in inter do: { 
        	var t := (:class item).name().
			t := t[1::(:- (size t) 1)].
		  	d[t] := item.
        	(:print t ' ').
			(:print item ' ')
	 	}
	 } else self.halt(). 
    
	return (:< x  (:y.first()))