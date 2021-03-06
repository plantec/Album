Class {
	#name : #AlbTextEditorLineSegmentType,
	#superclass : #AlbEditorSegmentType,
	#category : #'Album-Model-Segment-Text-Line'
}

{ #category : #accessing }
AlbTextEditorLineSegmentType >> holder [
	"Instantiate and return a new text segment holder based on my type"
	<return: #AlbEditorSegmentHolder>

	^ AlbTextEditorLineSegmentHolder new
]
