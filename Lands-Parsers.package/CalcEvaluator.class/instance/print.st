printing
print

	^ super print ==> {
		[ :values | CalcTranscript |> #clear ].
		[ :values | CalcTranscript |> {#showAll: . values second} ]
	}	