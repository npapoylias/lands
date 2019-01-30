*Lands-UI
instanceOnMethod: aMethod
	| instance c |
	c := aMethod methodClass.
	instance := self new.
	instance
		browsedEnvironment: self defaultBrowsedEnvironment;
		showInstance: c isMeta not;
		package: (self parentOfClass: c)
			class: c
			protocol: aMethod protocol asString
			method: aMethod";
		open".
	"instance ui
		useLastPackagePatternStringForClass: class;
		showHierarchy: false;
		giveFocusToMethod."
	^ instance