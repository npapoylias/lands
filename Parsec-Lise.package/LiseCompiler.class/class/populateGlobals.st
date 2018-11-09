accessing
populateGlobals
	"You should make them all lambdas to preserve polymorphism !"
	| globalSelectors |
	globalSelectors := ((ProtoObject methods select: 
				[:m | m protocol = 'class membership' or: [ m protocol = 'comparing']]) asOrderedCollection
			addAll: (Object methods select: [ :m | m protocol = 'comparing']);
			addAll: (Magnitude methods select: [ :m | m protocol = 'testing']);
			addAll: (Number methods select: 
				[ :m | m protocol = 'mathematical functions' or: [ m protocol = 'arithmetic' ] ]);
			yourself) collect: [ :m | m selector ].
	globalSelectors do: [:s | self addGlobalSelectorAsBlock: s ].
	{
		  #append -> [ :l | (l first copy) 
										addAll: l second asOrderedCollection; 
										yourself ] " op.add " .  
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
        #print -> [:l | l do: [:litem | Transcript show: litem]] "fix this -- lambda x: scm_print(x)".	  
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
		  #do -> [:l | l first do: [:litem |
				l second apply: litem	
			]]."different depending if this is list or dict"
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
			} do: [ :assoc |  
				assoc value isSymbol
					ifTrue: [ 
						self addGlobalSelectorAsBlock: assoc value. "create the block and then also install the synonym"
						self addGlobal: (Smalltalk globals at: assoc value) as: assoc key ]
					ifFalse: [ self addGlobal: assoc value as: assoc key ]	
			]