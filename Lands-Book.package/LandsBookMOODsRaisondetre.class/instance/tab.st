not defined category
tab 
				^ tab ifNil: [ 
					tab := self newTab.
					tab 
						label: 'MOODs Raison d'' etre';
						closeable: false;
						icon: (self appIcon: #project size: 28@28).
					tab model: self tabContents. tab ]