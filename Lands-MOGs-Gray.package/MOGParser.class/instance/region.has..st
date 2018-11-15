parsing
region: token has: anAttribute

	"bold, italic, narrow, normal, strucOut, underlined"
	input addAttribute: anAttribute from: token from + 1 to: token to.
	^ token