tests
testInfluenza
	|scriptResult|
	"maybe return a dict with the names ?"
	scriptResult := EpiScripter new Influenza. "should recompile here ?"
	self assert:  scriptResult size = 3.
	self assert: (scriptResult at: 1) class = EpiModel.
	self assert: (scriptResult at: 1) name = #SEIRS.
	self assert: (scriptResult at: 2) class = EpiModel.
	self assert: (scriptResult at: 2) name = #Biological.
	self assert: (scriptResult at: 3) class = Map.
	self assert: (scriptResult at: 3) name = #Indochina.
	"can add more tests here, but it has already passed 
	the MOOD validation"