not defined category
tab 
				^ tab ifNil: [ 
					tab := self newTab.
					tab 
						label: 'EpiModeler';
						closeable: false;
						icon: (self appIcon: #class size: 28@28).
					tab model: self tabContents. tab ]