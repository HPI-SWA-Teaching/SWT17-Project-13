testing
isAbstract
	^ super isAbstract or: [self name = #GMCollisionTest]