lands-extentions
addLandsItemsToMenu: menu targeting: ed
	|landsMenu boardMenu styleMenu updateMenu|

	landsMenu := MenuMorph new.
	boardMenu := MenuMorph new.
	updateMenu := MenuMorph new.
	styleMenu := MenuMorph new.
	boardMenu addMenuItem: (MenuItemMorph new 
		contents: 'Down'; 
		target: ed; 
		selector: #boardIt;
		icon: (self iconNamed: #down)).
	boardMenu
		addMenuItem:
			(MenuItemMorph new
				contents: 'Right';
				target: ed;
				selector: #boardItRight;
				icon: (self iconNamed: #forward)).
	updateMenu addMenuItem: (MenuItemMorph new 
		contents: 'Down'; 
		target: ed; 
		selector: #updateIt;
		icon: (self iconNamed: #down)).
	updateMenu
		addMenuItem:
			(MenuItemMorph new
				contents: 'Right';
				target: ed;
				selector: #updateItRight;
				icon: (self iconNamed: #forward)).
	landsMenu add: 'Board it' icon: (self iconNamed: #objects) subMenu: boardMenu.
	landsMenu add: 'Update it' icon: (self iconNamed: #refresh) subMenu: updateMenu.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Tab It'; 
		target: ed; 
		selector: #tabIt;
		icon: (self iconNamed: #smallOpen)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Embed it'; 
		target: ed; 
		selector: #embedIt;
		icon: (self iconNamed: #smallPushpin)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Scroll It'; 
		target: ed; 
		selector: #scrollIt;
		icon: (self iconNamed: #greenArrowUpAndDown)).
	landsMenu addLine.
	self addStyleTemplatesTo: styleMenu targeting: ed.
	styleMenu addLine.
	styleMenu addMenuItem: (MenuItemMorph new 
		contents: 'Font'; 
		target: ed; 
		selector: #forceTextFont;
		icon: (self iconNamed: #haloFontStyle)).
	styleMenu addMenuItem: (MenuItemMorph new 
		contents: 'Emph/Align'; 
		target: ed; 
		selector: #forceEmphasisOrAlignement;
		icon: (self iconNamed: #haloFontEmph)).
	styleMenu addMenuItem: (MenuItemMorph new 
		contents: 'Color'; 
		target: ed; 
		selector: #forceColor;
		icon: (self iconNamed: #paint)).
	styleMenu addLine.
	styleMenu addMenuItem: (MenuItemMorph new 
		contents: 'New Style'; 
		target: ed; 
		selector: #newStyle;
		icon: (self iconNamed: #changeAdd)).
	landsMenu add: 'Style it' icon: (self iconNamed: #paint) subMenu: styleMenu.
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Image it'; 
		target: ed; 
		selector: #insertImage;
		icon: (self iconNamed: #catalog)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Link it'; 
		target: ed; 
		selector: #forceURL;
		icon: (self iconNamed: #publish)).
	landsMenu addMenuItem: (MenuItemMorph new 
		contents: 'Button it'; 
		target: ed; 
		selector: #forceAction;
		icon: (self iconNamed: #scriptManager)).
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
	landsMenu addLine.
	landsMenu add: 'Edit...' icon: (self iconNamed: #edit) subMenu: menu.
	"menu addAllFrom: landsMenu."
	^ landsMenu