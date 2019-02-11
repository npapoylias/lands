parsing
region: token has: anAttribute

	"bold, italic, narrow, normal, strucOut, underlined"
	token to <= input size ifTrue: [ "EOF handling -- recheck"
		input addAttribute: anAttribute from: token from + 1 to: token to
	].
	^ token