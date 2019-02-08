lands-extentions
codePaneMenu: menu shifted: shifted 
	"Note that unless we override perform:orSendTo:, 
	PluggableTextController will respond to all menu items in a 
	text pane"
	| donorMenu landsMenu ed |

	donorMenu := shifted
				ifTrue: [self shiftedYellowButtonMenu]
				ifFalse: [self yellowButtonMenu].
	ed := self.
	menu addLine.
	landsMenu := MenuMorph new.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Board It'; 
		target: ed; 
		selector: #scrollIt;
		icon: (self iconNamed: #down)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Embed It'; 
		target: ed; 
		selector: #embedIt;
		icon: (self iconNamed: #smallPushpin)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Tab It'; 
		target: ed; 
		selector: #tabIt;
		icon: (self iconNamed: #smallOpen)).
	landsMenu
		addMenuItem:
			(MenuItemMorph new
				contents: 'Board It';
				target: editor;
				selector: #scrollItRight;
				icon: (self iconNamed: #forward)).
	landsMenu addLine.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Font'; 
		target: ed; 
		selector: #forceTextFont;
		icon: (self iconNamed: #haloFontStyle)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Emph/Align'; 
		target: ed; 
		selector: #forceEmphasisOrAlignement;
		icon: (self iconNamed: #haloFontEmph)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Color'; 
		target: ed; 
		selector: #forceColor;
		icon: (self iconNamed: #paint)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Action'; 
		target: ed; 
		selector: #forceAction;
		icon: (self iconNamed: #scriptManager)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'URL'; 
		target: ed; 
		selector: #forceURL;
		icon: (self iconNamed: #publish)).
	landsMenu addLine.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Open .lands'; 
		target: ed; 
		selector: #openLandsDoc;
		icon: (self iconNamed: #smallOpen)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Save  .lands'; 
		target: ed; 
		selector: #saveLandsDoc;
		icon: (self iconNamed: #smallSave)).
	"menu add: 'Lan.d.s' icon: (self iconNamed: #objects) subMenu: landsMenu."
	menu addAllFrom: landsMenu.
	menu addAllFrom: donorMenu.
	^ menu