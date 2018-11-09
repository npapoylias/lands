adding
backTrackAdd: alternative for: aState thatCompleted: anotherState

		backTrackStack push: 
			(GrayBackTrackState new 
				at: readingPosition 
				indexedBy: charts chartIndex 
				at: charts current size 
				with: alternative 
				for: aState;
				thatCompleted: anotherState).