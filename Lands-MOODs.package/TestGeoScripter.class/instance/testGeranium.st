tests
testGeranium

	| scriptResult |
	scriptResult := GeoScripter new Geranium. 
	self assert:  scriptResult size = 2.
	self assert: (scriptResult at: 1) class = StatScenario.
	self assert: (scriptResult at: 1) name = #Geranium.
	self assert: (scriptResult at: 2) class = UrbanProfile.
	self assert: (scriptResult at: 2) name = #HLMNew.
