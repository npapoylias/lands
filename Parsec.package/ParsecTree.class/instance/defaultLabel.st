visual-nodes
defaultLabel

	"update with actual selectors"
	^ defaultLabel ifNil: [ defaultLabel := self label: [ :o | o asString ] labelColor: Color black]