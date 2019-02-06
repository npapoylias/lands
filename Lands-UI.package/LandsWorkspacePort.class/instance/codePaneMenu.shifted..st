lands-extentions
codePaneMenu: menu shifted: shifted 
	"Note that unless we override perform:orSendTo:, 
	PluggableTextController will respond to all menu items in a 
	text pane"
	| donorMenu landsMenu editor |

	donorMenu := shifted
				ifTrue: [self shiftedYellowButtonMenu]
				ifFalse: [self yellowButtonMenu].
	editor := self.
	menu addLine.
	landsMenu := MenuMorph new.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Embed It'; 
		target: editor; 
		selector: #embedIt;
		icon: (self iconNamed: #smallPushpin)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Tab It'; 
		target: editor; 
		selector: #tabIt;
		icon: (self iconNamed: #smallOpen)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Scroll It'; 
		target: editor; 
		selector: #scrollIt;
		icon: (self iconNamed: #down)).
	landsMenu addLine.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Font'; 
		target: editor; 
		selector: #forceTextFont;
		icon: (self iconNamed: #haloFontStyle)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Emph/Align'; 
		target: editor; 
		selector: #forceEmphasisOrAlignement;
		icon: (self iconNamed: #haloFontEmph)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Color'; 
		target: editor; 
		selector: #forceColor;
		icon: (self iconNamed: #paint)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Action'; 
		target: editor; 
		selector: #forceAction;
		icon: (self iconNamed: #scriptManager)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'URL'; 
		target: editor; 
		selector: #forceURL;
		icon: (self iconNamed: #publish)).
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
	"menu add: 'Lan.d.s' icon: (self iconNamed: #objects) subMenu: landsMenu."
	menu addAllFrom: landsMenu.
	menu addAllFrom: donorMenu.
	^ menu