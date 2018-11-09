adding
backTrackAdd: alternative for: aState

		backTrackStack push: 
			(GrayBackTrackState new 
				at: readingPosition indexedBy: charts chartIndex at: charts current size with: alternative for: aState).