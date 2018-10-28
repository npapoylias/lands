Parsec-LanguageClasses
functorInvocation

	^ super functorInvocation ==> [ :values | { #valueWithArguments: . values stmts } ].