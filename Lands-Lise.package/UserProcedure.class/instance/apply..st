as yet unclassified
apply: arguments

	^ LiseInterpreter eval: procedureBody 
			in: (Environment param: parameters args: arguments outer: definitionEnvironment)