as yet unclassified
testLazyInitialization
	GMResourceLocator imageManager: nil.
	self assert: [GMResourceLocator imageManager notNil].
	GMResourceLocator soundManager: nil.
	self assert: [GMResourceLocator imageManager notNil].