adding
alreadyInCharts: aState
	
	|prev|
	
	1 to: current size do: [ :i | ((current at: i) equalTo: aState) ifTrue: [ ^ current at: i ]  ].
	prev := self previous.
	1 to: prev size do: [ :i | ((prev at: i) equalTo: aState) ifTrue: [ ^ prev at: i ]  ].
	self updateLastSeenForAddOn: aState.
	^ aState
