Class {
	#name : 'PBConflictDropListMorph',
	#superclass : 'DropListMorph',
	#category : 'CargoPackageManager-UI-Conflicts',
	#package : 'CargoPackageManager-UI',
	#tag : 'Conflicts'
}

{ #category : 'private' }
PBConflictDropListMorph >> listHeight [
	
	^ super listHeight max: 50
]
