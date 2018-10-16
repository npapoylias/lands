Parsec-LanguageClasses
embeddedArray

	^ super embeddedArray ==> [ :values | values second array <-> values ]
	"span will be very useful in extentions -- need to add asl in string symbols,
	numbers etc"