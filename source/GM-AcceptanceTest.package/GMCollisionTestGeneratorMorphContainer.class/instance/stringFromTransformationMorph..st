printing
stringFromTransformationMorph: aTransformationMorph
	^ String streamContents: [:str | 
		str nextPutAll: '(self rotatedRectangleShellWithAngle: '. aTransformationMorph angle storeOn: str.
		str nextPutAll: self class crWithIndent, 'withScale: '. aTransformationMorph scaleFactor storeOn: str.
	  	str nextPutAll: self class crWithIndent, 'atPosition: '. aTransformationMorph position storeOn: str. str nextPut: $)]