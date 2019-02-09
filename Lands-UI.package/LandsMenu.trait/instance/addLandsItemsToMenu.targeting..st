lands-extentions
addLandsItemsToMenu: menu targeting: ed
	|landsMenu boardMenu |

	landsMenu := MenuMorph new.
	boardMenu := MenuMorph new.
	boardMenu addMenuItem: (MenuItemMorph new 
		contents: 'Down'; 
		target: ed; 
		selector: #scrollIt;
		icon: (self iconNamed: #down)).
	boardMenu
		addMenuItem:
			(MenuItemMorph new
				contents: 'Right';
				target: ed;
				selector: #scrollItRight;
				icon: (self iconNamed: #forward)).
	landsMenu add: 'Board it' icon: (self iconNamed: #objects) subMenu: boardMenu.
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
		selector: #toDoScrollIt;
		icon: (self iconNamed: #greenArrowUpAndDown)).
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
	landsMenu addLine.
	landsMenu add: 'Edit...' icon: (self iconNamed: #edit) subMenu: menu.
	"menu addAllFrom: landsMenu."
	^ landsMenu