tests - debugging
testDebugResultDebug
	| context parser resultContext |
	context := PP2RecordingContext new.
	
	parser := 'foo' asPParser star.
	resultContext := parser debug: 'foofoofoo' withContext: context.
	
	self assert: resultContext returnValue isPetit2Success.
	self assert: context debugResult isNil not.
	self assert: context debugResult children size equals: 1.