accessing
paged

	^ pager ifNil: [ pager := SpecPager items: { self bringThePane } ]