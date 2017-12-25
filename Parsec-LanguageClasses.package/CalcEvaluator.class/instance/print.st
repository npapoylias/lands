Parsec-LanguageClasses
print

	^ super print ==> [ :tokens | [ |value|
			1 to: tokens second size by: 2 do: [ :i |  "ignore commas"
						value := (tokens second at: i) value.	
						Transcript show: value
			]
	]]
	