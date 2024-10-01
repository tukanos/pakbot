Class {
	#name : 'PBConflictDetailsColumn',
	#superclass : 'PBConflictsColumn',
	#category : 'CargoPackageManager-UI-Conflicts',
	#package : 'CargoPackageManager-UI',
	#tag : 'Conflicts'
}

{ #category : 'reading' }
PBConflictDetailsColumn >> read: aPBConflict [

	^ aPBConflict resolutionDetailText asMorph
]
