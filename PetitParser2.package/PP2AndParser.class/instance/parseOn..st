parsing - private
parseOn: startContext
	| context |
	context := parser parseWithContext:  startContext.
	
	^ context isPetit2Success 
		ifTrue: [ startContext setValue: context value ]
		ifFalse: [ context ]