*Gray
numberOfArgs

	| kw |
	kw := 0.
	1 to: self size do: [:i | (self at: i) = $: ifTrue: [ kw := kw + 1 ]  ].
	^ kw