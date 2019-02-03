*Lands-UI-Editor
getMenu: shiftKeyState
	"Ask the getMenuPolicy to lookup the menu to popup if any"
	|menu|
	menu := shiftKeyState
		ifTrue: [ self getMenuPolicy lookupShiftMenu ]
		ifFalse: [ self getMenuPolicy lookupMenu ].
	menu addLine.
	menu addMenuItem: (MenuItemMorph new 
		contents: 'Font'; 
		target: editor; 
		selector: #forceTextFont;
		icon: (self iconNamed: #haloFontStyle)).
	menu addMenuItem: (MenuItemMorph new 
		contents: 'Emph/Align'; 
		target: editor; 
		selector: #forceEmphasisOrAlignement;
		icon: (self iconNamed: #haloFontEmph)).
	menu addMenuItem: (MenuItemMorph new 
		contents: 'Color'; 
		target: editor; 
		selector: #forceColor;
		icon: (self iconNamed: #paint)).
	^ menu