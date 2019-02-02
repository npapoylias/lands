*Lands-UI-Editor
getMenu: shiftKeyState
	"Ask the getMenuPolicy to lookup the menu to popup if any"
	|menu|
	menu := shiftKeyState
		ifTrue: [ self getMenuPolicy lookupShiftMenu ]
		ifFalse: [ self getMenuPolicy lookupMenu ].
	menu add: 'Font' target: editor selector: #changeTextFont.
	menu add: 'Emph/Align' target: editor selector: #changeEmphasisOrAlignment.
	menu add: 'Color' target: editor selector: #chooseColor.
	^ menu