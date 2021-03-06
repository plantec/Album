"
I am an abstract text styler strategy used by ${class:AlbTextEditor}$.
My subclasses are responsible for the text style request executions.
For example, one strategy could perform styling in a background process, another in a UI process (and being therefore blocking).

The common methods are ${method:AlbTextStylerStrategy>>#style:}$ and ${method:AlbTextStylerStrategy>>#style:afterDo:}$.

See my subclasses for concrete strategies: ${class:AlbTextStylerStrategy|expanded=true|show=gtSubclassesFor:}$


"
Class {
	#name : #AlbTextStylerStrategy,
	#superclass : #Object,
	#traits : 'TBlDebug',
	#classTraits : 'TBlDebug classTrait',
	#category : #'Album-Styler'
}

{ #category : #testing }
AlbTextStylerStrategy class >> isAbstract [
	^ self name = #AlbTextStylerStrategy 
]

{ #category : #private }
AlbTextStylerStrategy >> doStyleText: aBlText with: aStyler afterDo: aBlock [
	"Synchronously style a given text with provided styler and evaluate a Block with the styled text
	once completed. Return styled text"
	| aStyledText |

	aStyledText := aStyler style: aBlText nextGeneration.
	aBlock value: aStyledText.
	^ aStyledText
]

{ #category : #styling }
AlbTextStylerStrategy >> styleTextInEditorElement: aEditorElement thenDo: aBlock [
	self subclassResponsibility
]
