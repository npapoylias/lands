accessing
globals
	|globalDict|
	globalDict := (((ProtoObject methods select: 
				[:m | m protocol = 'class membership' or: [ m protocol = 'comparing']]) asOrderedCollection
			addAll: (Object methods select: [ :m | m protocol = 'comparing']);
			addAll: (Magnitude methods select: [ :m | m protocol = 'testing']);
			addAll: (Boolean methods select: [:m | m protocol = 'logical operations']);
			addAll: (UndefinedObject methods select: [:m | m protocol = 'testing']);
			addAll: (Number methods select: 
				[ :m | m protocol = 'mathematical functions' or: [ m protocol = 'arithmetic' ] ]);
			yourself) collect: [ :m | m selector -> m ]).
	globalDict addAll: {
		  #append -> [ :l :i | ((l copy) asOrderedCollection
										addAll: i; 
										yourself) asArray ] " op.add " .  
        #apply ->  [:l | l first apply: l second]. "  apply " .
        #begin ->  [:l | l last] "  lambda *x: x[-1] " .
        #car -> [:l | l first] "    lambda x: x[0] " .
        #cdr -> [:l | l allButFirst] "    lambda x: x[1:] " . 
        #cons -> [:a :b | ({a} asOrderedCollection addAll: b asOrderedCollection; yourself) asArray] "   lambda x,y: [x] + y " .
        #'eq?' -> #== "    op.is_ " . 
        #'equal?' -> #= " op.eq " . 
        #length -> #size " len " . 
        #list -> [:l | l ] variadic"   lambda *x: list(x) " . 
        #'list?' -> #isArray "  lambda x: isinstance(x,list) " . 
        #map -> [:l | l second collect: [:litem | l first apply: litem]] "    map " .
        #max -> #max "    max " .
        #min -> #min "    min " .
		  #floor -> #floor.
		  #ceiling -> #ceiling.
        #not -> #not "    op.not_ " .
        #'null' -> #isEmpty "  lambda x: x == [] " . 
        #'number?' -> #isNumber "lambda x: isinstance(x,Number) " .   
        #'procedure?' -> [:l | l first isKindOf: Procedure] "callable " .
        #round -> #rounded "  round " .
        #'symbol?' -> #isSymbol "lambda x: isinstance(x,Symbol) " .
        #print -> [:l | l do: [:litem | Transcript show: litem]] variadic "fix this -- lambda x: scm_print(x)".	  
		  #dict -> [:l | 
				|d|
				d := Dictionary new.
				l do: [ :litem | "tuple list" 
					d at: litem first put: litem second.	
				].
				d
			].
		  #atPut -> #at:put:.
		  #at -> #at:.
		  #addFirst -> #addFirst:.
		  #addLast -> #addLast:.
		  #whileTrue -> #whileTrue:.
		  #intersection -> #intersection:.
		  #groupByHaving -> #groupedBy:having:.
		  #do -> [:l :b | l do: b]."different depending if this is list or dict" 
		 #doWithIndex -> [:l | l first doWithIndex: [:litem :index |
				l second apply: { litem . index }	
			]].
		  #keysAndValuesDo -> [:l | l first keysAndValuesDo: [:key :value |
				l second apply: { key . value }	
			]].
		  #select -> [:l | l first select: [:litem | l second apply: litem]].
		  #collect -> [:l | l first collect: [:litem | l second apply: litem]].
		  #parse -> [ :l | LiseCompiler compileval: '''(' , l  , ')' ]. "string to list through quoting"
		  #eval -> [ :l | LiseCompiler compileval: l  asLiseString ]. "list to value / now from list to string to value -- could do better with eval:in: that compiles to ASL"
		  #parseval -> [ :l | LiseCompiler compileval: l  ]. "string to value -- correct"
		  #gdefine -> [ :s :v | Smalltalk globals at: s put: v ].
		  #gset -> [ :s :v | Smalltalk globals at: s put: v ]
		}.
		self duplicatesAndSymbolsAsBlocks: globalDict.
		globalDict := globalDict asDictionary.
		#(+ * - / & |) do: [ :s | globalDict at: s put: (globalDict at: s) value variadic ]. "make primary arithm. ops variadic"
		^ globalDict 