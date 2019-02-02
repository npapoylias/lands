accessing
getMenu: shiftKeyState
	"Ask the getMenuPolicy to lookup the menu to popup if any"
	|menu|
	menu := shiftKeyState
		ifTrue: [ self getMenuPolicy lookupShiftMenu ]
		ifFalse: [ self getMenuPolicy lookupMenu ].
	^ menu