as yet unclassified
classicFor

	^ super classicFor ==> [ :values | 
		values fourth |> {values fifth . values last arguments: values second args } <-> values 
	]