*Lands-UI-Editor
getMenu: shiftKeyState
	"Ask the getMenuPolicy to lookup the menu to popup if any"

	| menu landsMenu boardMenu styleMenu updateMenu|
	menu := shiftKeyState
		ifTrue: [ self getMenuPolicy lookupShiftMenu ]
		ifFalse: [ self getMenuPolicy lookupMenu ].
	landsMenu := MenuMorph new.
	boardMenu := MenuMorph new.
	styleMenu := MenuMorph new.
	updateMenu := MenuMorph new.
	updateMenu addMenuItem: (MenuItemMorph new 
		contents: 'Down'; 
		target: editor; 
		selector: #updateIt;
		icon: (self iconNamed: #down)).
	updateMenu
		addMenuItem:
			(MenuItemMorph new
				contents: 'Right';
				target: editor;
				selector: #updateItRight;
				icon: (self iconNamed: #forward)).
	boardMenu addMenuItem: (MenuItemMorph new 
		contents: 'Down'; 
		target: editor; 
		selector: #boardIt;
		icon: (self iconNamed: #down)).
	boardMenu
		addMenuItem:
			(MenuItemMorph new
				contents: 'Right';
				target: editor;
				selector: #boardItRight;
				icon: (self iconNamed: #forward)).
	landsMenu add: 'Board it' icon: (self iconNamed: #objects) subMenu: boardMenu.
	landsMenu add: 'Update it' icon: (self iconNamed: #refresh) subMenu: updateMenu.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Tab It'; 
		target: editor; 
		selector: #tabIt;
		icon: (self iconNamed: #smallOpen)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Embed it'; 
		target: editor; 
		selector: #embedIt;
		icon: (self iconNamed: #smallPushpin)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Page It'; 
		target: editor; 
		selector: #scrollIt;
		icon: (self iconNamed: #recentMessages)).
	landsMenu addLine.
	styleMenu addMenuItem: (MenuItemMorph new 
		contents: 'Font'; 
		target: editor; 
		selector: #forceTextFont;
		icon: (self iconNamed: #haloFontStyle)).
	styleMenu addMenuItem: (MenuItemMorph new 
		contents: 'Emph/Align'; 
		target: editor; 
		selector: #forceEmphasisOrAlignement;
		icon: (self iconNamed: #haloFontEmph)).
	styleMenu addMenuItem: (MenuItemMorph new 
		contents: 'Color'; 
		target: editor; 
		selector: #forceColor;
		icon: (self iconNamed: #paint)).
	landsMenu add: 'Style it' icon: (self iconNamed: #paint) subMenu: styleMenu.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Image it'; 
		target: editor; 
		selector: #insertImage;
		icon: (self iconNamed: #catalog)).
	
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Link it'; 
		target: editor; 
		selector: #forceURL;
		icon: (self iconNamed: #publish)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Button it'; 
		target: editor; 
		selector: #forceAction;
		icon: (self iconNamed: #scriptManager)).
	landsMenu addLine.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Open .lands'; 
		target: editor; 
		selector: #openLandsDoc;
		icon: (self iconNamed: #smallOpen)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Save  .lands'; 
		target: editor; 
		selector: #saveLandsDoc;
		icon: (self iconNamed: #smallSave)).
	landsMenu addLine.
	landsMenu add: 'Edit...' icon: (self iconNamed: #edit) subMenu: menu.
	"menu addAllFrom: landsMenu."
	^ landsMenu