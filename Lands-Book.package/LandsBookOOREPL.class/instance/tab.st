not defined category
tab 
				^ tab ifNil: [ 
					tab := self newTab.
					tab 
						label: 'OO REPL';
						closeable: false;
						icon: (self appIcon: #repl size: 28@28).
					tab model: self tabContents. tab ]