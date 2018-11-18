printing
print

	^ super print ==> [ :values | Transcript |> {#show: . values second} ]
	