lands-extentions
buildTextMorph
	
	pluggableTextMorph := (PluggableTextMorph 
					on: self
					text: #contents
					accept: #acceptContents:
					readSelection: nil 
					menu: #codePaneMenu:shifted:).
					
	pluggableTextMorph styler: (LandsWorkspaceTextStyler new view: pluggableTextMorph).
	
	pluggableTextMorph font: StandardFonts codeFont.

	pluggableTextMorph styler workspace: self.
	editor := pluggableTextMorph textMorph editor.
	pluggableTextMorph textMorph allowsKeymapping: false.
	^ pluggableTextMorph