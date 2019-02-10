lands-extentions
buildTextMorph
	
	pluggableTextMorph := (PluggableTextMorph 
					on: self
					text: #contents
					accept: #acceptContents:
					readSelection: nil 
					menu: #codePaneMenu:shifted:).
					"styler: LandsWorkspaceStyler new."
					"styler: LandsWorkspaceTextStyler new."
	
	
	pluggableTextMorph font: StandardFonts codeFont.

	pluggableTextMorph styler workspace: self.
	editor := pluggableTextMorph textMorph editor.
	^ pluggableTextMorph