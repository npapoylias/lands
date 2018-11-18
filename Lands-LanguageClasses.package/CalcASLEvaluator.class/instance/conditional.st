accessing
conditional

	^ super conditional ==> { 
			[:values | values third |> { #ifTrue: . values fifth block} ]. 
			[ :values | values third |> { #ifTrue: . values fifth block. #ifFalse: . values seventh block} ].
	}
	