parsing
region: token font: aFamilyName size: aSize

	^ self region: token has: (TextFontReference 
		toFont: (LogicalFont 
					familyName: aFamilyName pointSize: aSize))