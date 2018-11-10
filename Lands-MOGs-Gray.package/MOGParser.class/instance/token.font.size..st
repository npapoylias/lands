parsing
token: token font: aFamilyName size: aSize

	^ self token: token has: (TextFontReference 
		toFont: (LogicalFont 
					familyName: aFamilyName pointSize: aSize))