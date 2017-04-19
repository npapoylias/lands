accessing
expression

	^ expression --> '\(' , expression , '\)' ==> [ :tokens | tokens second ]
		| expression , '\*' , expression ==> [ :tokens | tokens first * tokens third ]
		| expression , '/' , expression ==> [ :tokens | tokens first / tokens third ]
		| expression , '\+' , expression ==> [ :tokens | tokens first + tokens third ]
		| expression , '-' , expression ==> [ :tokens | tokens first - tokens third ]
		| number