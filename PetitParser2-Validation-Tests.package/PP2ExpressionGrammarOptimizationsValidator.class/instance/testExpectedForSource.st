as yet unclassified
testExpectedForSource
	| result |
	result := validator expectedForSource: '1+2'.
	
	self assert: result size = 3.
	self assert: result first = '1'.
	self assert: result second = $+.
	self assert: result third = '2'.