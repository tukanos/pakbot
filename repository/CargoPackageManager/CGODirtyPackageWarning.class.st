"
Warning signaled to alert the user that the package is dirty and needs to be saved.
"
Class {
	#name : 'CGODirtyPackageWarning',
	#superclass : 'Warning',
	#category : 'CargoPackageManager-Model',
	#package : 'CargoPackageManager',
	#tag : 'Model'
}

{ #category : 'testing' }
CGODirtyPackageWarning >> isResumable [
	^ true
]
