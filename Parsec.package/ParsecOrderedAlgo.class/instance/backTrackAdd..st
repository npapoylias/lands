adding
backTrackAdd: alternative

				backTrackStack push: 
					(ParsecBackTrackState new 
						at: readingPosition indexedBy: charts chartIndex at: charts current size with: alternative)