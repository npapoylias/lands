accessing
start

	^ super start ==> [ :values | (values addLast: CalcTranscript |> #print; yourself) sequence ]
	