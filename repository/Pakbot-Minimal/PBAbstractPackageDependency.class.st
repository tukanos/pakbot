"
Common class representing a dependency to a package.
"
Class {
	#name : 'PBAbstractPackageDependency',
	#superclass : 'PBAbstractDependency',
	#instVars : [
		'targetedPackage'
	],
	#category : 'Pakbot-Minimal-Dependencies',
	#package : 'Pakbot-Minimal',
	#tag : 'Dependencies'
}

{ #category : 'accessing' }
PBAbstractPackageDependency >> packageName [
	self subclassResponsibility
]

{ #category : 'accessing' }
PBAbstractPackageDependency >> targetedPackage [
	^ targetedPackage
]
