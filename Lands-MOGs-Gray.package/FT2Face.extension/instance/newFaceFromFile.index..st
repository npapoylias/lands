*Lands-MOGs-Gray
newFaceFromFile: fileName index: anInteger

	self primNewFaceFromFile: (self positionOf: fileName) fullName index: anInteger.
	self class register: self.	