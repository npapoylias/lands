visual-nodes
defaultPopUp
	^ defaultPopUp ifNil: [
		defaultPopUp := ParsecPopup new
		alphaPopupBackground: 1;
		backgroundColor: Color blue;
		borderColor: Color red;
		textColor: Color orange;
		text: [ :e | popUpBlock value: e ] 
	]