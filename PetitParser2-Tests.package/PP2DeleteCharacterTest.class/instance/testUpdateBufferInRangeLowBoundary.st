tests
testUpdateBufferInRangeLowBoundary
	key := 0. "+1"
	memento furthestPosition: 2.
	change position: 1.

	context position: memento furthestPosition.
	memento contextMemento: context remember.

	buffer at: key put: memento.
	
	newBuffer := change updateBuffer: buffer.
	self assert: (newBuffer at: key) isKindOf: PP2MementoPromise.
	self assert: (newBuffer at: key) buffer equals: newBuffer.
	self assert: (newBuffer at: key) contextMemento position equals: 1.
	self assert: (newBuffer at: key) position equals: key.
	