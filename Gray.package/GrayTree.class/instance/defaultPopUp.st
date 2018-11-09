accessing
defaultPopUp
	^ defaultPopUp ifNil: [
		defaultPopUp := GrayPopup new
		alphaPopupBackground: 1;
		backgroundColor: (Color blue copy alpha: 0.6);
		borderColor: Color black;
		textColor: Color white;
		text: [ :e | popUpBlock value: e ] 
	]