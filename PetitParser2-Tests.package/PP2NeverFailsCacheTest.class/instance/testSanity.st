tests
testSanity
	| parser |
	parser := ((($f asParser2, 'oo' asParser2) wrapped not ==> [ :e | e ]) star / 
				   (nil asParser2, '' asParser2)) end.
	PP2NeverFailsCache new doPass: parser.
	
	self assert: (parser allNodes allSatisfy: [ :child | child hasProperty: #neverFails ])