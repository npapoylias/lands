accessing
expression

	"add literal string support without escapes"

	^ (expression --> '\(' , expression , '\)'
		| expression , '\*' , expression 
		| expression , '/' , expression 
		| expression , '\+' , expression 
		| expression , '-' , expression 
		| number) ==> {  
			[:tokens | tokens second ].
			[:tokens | tokens first * tokens third ].
			[:tokens | tokens first / tokens third ].
			[:tokens | tokens first + tokens third ].
			[:tokens | tokens first - tokens third ]
		}