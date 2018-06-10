adding
addFragment: aFragment

	fragments at: aFragment name 
		ifPresent: [ :f | self error ] 
		ifAbsentPut: aFragment