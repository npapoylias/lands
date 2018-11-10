instance creation
font: aFamilyName size: aSize

	self has: (TextFontReference 
		toFont: (LogicalFont 
					familyName: aFamilyName pointSize: aSize))