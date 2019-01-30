*Lands-UI
instanceOnClass: aClass
	| instance |
	instance := self new.
	instance
		browsedEnvironment: self defaultBrowsedEnvironment;
		showInstance: aClass isMeta not;
		package: (self parentOfClass: aClass)
			class: aClass";
		open".
	"instance ui
		useLastPackagePatternStringForClass: aClass;
		showHierarchy: false;
		giveFocusToProtocol."
	^ instance
