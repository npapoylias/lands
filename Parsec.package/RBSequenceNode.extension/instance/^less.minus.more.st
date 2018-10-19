*Parsec
<-> values
	|bars|
	bars := values bars.
	(bars isEmpty not) ifTrue: [ 
		leftBar := bars first from.
		rightBar := bars last to
	].
	periods := values dots collect: [ :t | t from ].