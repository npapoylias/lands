specs
defaultSpec
	<spec: #default>
	"self open"
	^ SpecLayout composed
		newRow: [ :row | 
			row 
				add: #navigationPane left: 0 right: 0.82;
				"addSplitter;"
				add: #tabArea left: 0.18 right: 0;
			"row newColumn: [ :c | 
				c 
					newRow: [ :r | r 
						add: #play left: 0 right: 0.95; 
						add: #pause left: 0.05 right: 0.90; 
						add: #stop  left: 0.10 right: 0.85; 
						add: #rwnd left: 0.15 right: 0.80; 
						add: #slider left: 0.20 right: 0.05; 
						add: #ff left: 0.95 right: 0.0] top: 0 bottom: 0.94;
						add: #tabmgrMap top: 0.06 bottom: 0.4;
						addSplitter;
						add: #tabmgrInput top: 0.6 bottom: 0 
			] left: 0 right: 0.30;"
				yourself
		]
