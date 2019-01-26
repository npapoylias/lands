visual-nodes
defaultLabel

	"update with actual selectors"
	^ defaultLabel ifNil: [ defaultLabel := self label: [ :o | self labelForElement: o ] labelColor: Color black]