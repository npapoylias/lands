accessing
expression

	^ super expression ==> {  
			[ :v | v first |> {v second . v third} ].
			[ :v | v first |> {v second . v third}].
			[ :v | v first |> { #raisedTo: . v last } ].
			[ :v | v second ].
			[ :v | v number lit ].
		}  