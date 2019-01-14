parsing
parse: aString using: aGrammar
	string := aString.
	input := GrayReadStream on: aString.
	memoLexing clear.
	grammar := aGrammar.
	dummyRule grammar: grammar.
	(grammar at: #ignore) regExpr matchesStreamPrefix: input.	"always at the start of next token"
	readingPosition := input position.	"mindfull for spaces in the beginning"
	charts
		currentAdd:
			(GrayState
				on: dummyRule
				alternative: 1
				from: readingPosition
				to: readingPosition
				dot: 0).
	"proceed returns true while we have more charts to loop through"
	self algoLoop.
	^ charts