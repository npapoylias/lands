view
defaultTreeMorph
	^ super defaultTreeMorph
			"doubleClickSelector: #doubleClick;"
			nodeStringGetter: #asString;
			getMenuSelector: #menu:shifted:.