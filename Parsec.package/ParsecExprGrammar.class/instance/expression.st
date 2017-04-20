accessing
expression

	"add literal string support without escapes"

	^ expression --> '\(' , expression , '\)' ==> [ :tokens | tokens second ]
		| expression , '\*' , expression ==> [ :tokens | tokens first * tokens third ]
		| expression , '/' , expression ==> [ :tokens | tokens first / tokens third ]
		| expression , '\+' , expression ==> [ :tokens | tokens first + tokens third ]
		| expression , '-' , expression ==> [ :tokens | tokens first - tokens third ]
		| number