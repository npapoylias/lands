as yet unclassified
asScannerStateFrom: start upTo: tokenEnd ending: endWithIgnore withIndex: anAlternative


	^ (self ruleAtDot asScannerStateFrom: start to: endWithIgnore withIndex: anAlternative)
			fromTerminal: self toTerminal;
			toTerminal: self toTerminal + 1;
			trimmedEnd: tokenEnd
