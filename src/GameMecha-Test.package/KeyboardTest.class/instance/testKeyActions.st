as yet unclassified
testKeyActions
	"Testing Actions"
	|morph|
	morph := RectangleMorph new.
	
	morph registerKeyHandler: KeyHandler new.
	morph eventHandler addBindingFromKeys: {#keyArrowUp. 'w'} as: #up. 
	
	self deny: (morph eventHandler isActionKeyDown: #up).	
	(self class generateKeyboardEventOfType: #keyDown withKey: 'w') sentTo: morph.	
	self assert: (morph eventHandler isActionKeyDown: #up).	
	(self class generateKeyboardEventOfType: #keyUp withKey: 'w') sentTo: morph.
	self deny: (morph eventHandler isActionKeyDown: #up).
	(self class generateKeyboardEventOfType: #keyDown withKey: #keyArrowUp) sentTo: morph.	
	self assert: (morph eventHandler isActionKeyDown: #up).	
	(self class generateKeyboardEventOfType: #keyUp withKey: #keyArrowUp) sentTo: morph.
	self deny: (morph eventHandler isActionKeyDown: #up).
	
	(morph eventHandler bindingFor: #up) keys: nil.
	
	(self class generateKeyboardEventOfType: #keyDown withKey: #keyArrowUp) sentTo: morph.	
	self deny: (morph eventHandler isActionKeyDown: #up).