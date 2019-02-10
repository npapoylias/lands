lands-extentions
addStyleTemplatesTo: styleMenu targeting: ed

	(self fileNamesWithExtention: 'style' inPath: FileSystem disk workingDirectory / 'styles')
		do: [ :style | 
				styleMenu addMenuItem:
						(MenuItemMorph new
							contents: style capitalized;
							target: ed;
							selector: #applyStyle:;
							arguments: {style};
							icon: (self iconNamed: #menuPin)).
		]