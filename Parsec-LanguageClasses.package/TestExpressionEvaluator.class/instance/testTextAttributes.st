tests
testTextAttributes
	
	| t actionBlock |
	t := 'hallo world !' asText.

	actionBlock := [ :action :event :object :paragraph :editor |  
		Transcript show: action; cr; show: event; cr; show: object; cr; show: paragraph; cr; show: editor; cr
	].

	t 
		addAttribute: (TextAction new actOnClickBlock: actionBlock) from: 1 to: 5;
		addAttribute: (TextColor color: Color red) from: 1 to: 5;
		addAttribute: (TextEmphasis bold) from: 1 to: 5;
		addAttribute: (TextEmphasis underlined) from: 1 to: 5;
		addAttribute: (TextFontReference toFont: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18)) from: 1 to: 5.
	
		"For the last one remember: LogicalFontManager defaultCurrent allFamilies"
	
	self assert: t string = 'hallo world !'
	