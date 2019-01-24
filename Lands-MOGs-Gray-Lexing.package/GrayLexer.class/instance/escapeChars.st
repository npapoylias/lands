parsing
escapeChars

	^ EscapeChars ifNil: [  
		EscapeChars := Dictionary new.
		EscapeChars
			at: $\ put: $\;
			at: $/ put: $/;
			at: $" put: $";
			at: $b put: Character backspace;
			at: $f put: Character newPage;
			at: $n put: Character cr;
			at: $r put: Character lf;
			at: $t put: Character tab;
			yourself
		]