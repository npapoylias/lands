not defined category
tab 
				^ tab ifNil: [ 
					tab := self newTab.
					tab 
						label: 'The Alt-Lise Postcard';
						closeable: false;
						icon: (self appIcon: #project size: 28@28).
					tab model: self tabContents. tab ]