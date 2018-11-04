tests
testInfluenza
	|scriptResult|
	
	scriptResult := EpiScripter new Influenza.
	self assert:  scriptResult size = 2.
	self assert: (scriptResult at: 1) class = EpiModel.
	self assert: (scriptResult at: 2) class = EpiModel.