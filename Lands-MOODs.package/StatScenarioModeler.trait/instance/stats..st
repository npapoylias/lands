accessing
stats: stats
	
	stats do: [ :s | self assert: s value keys sum equals: 100 ]