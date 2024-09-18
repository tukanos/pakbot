"
Constraint on a fixed dependency version of the targeted package.
"
Class {
	#name : 'PBFixedVersionDependencyConstraint',
	#superclass : 'Object',
	#instVars : [
		'version'
	],
	#category : 'Pakbot-Minimal-Dependencies',
	#package : 'Pakbot-Minimal',
	#tag : 'Dependencies'
}

{ #category : 'instance creation' }
PBFixedVersionDependencyConstraint class >> fromString: aString [
	| constraintString |
	"It only supports fixed versions"
	constraintString := aString trim.
	(constraintString first = $=)
		ifTrue: [ constraintString := constraintString allButFirst ].
		
	^ self with: (SemanticVersion fromString: constraintString )
]

{ #category : 'instance creation' }
PBFixedVersionDependencyConstraint class >> fromVersion: aStringOrVersion [

	aStringOrVersion isString ifTrue: [ ^ self fromString: aStringOrVersion ].
	^ self with: aStringOrVersion
]

{ #category : 'instance creation' }
PBFixedVersionDependencyConstraint class >> with: aStringOrSemanticVersion [ 
	^ self new
		initializeWith: aStringOrSemanticVersion asSemanticVersion;
		yourself.
]

{ #category : 'comparing' }
PBFixedVersionDependencyConstraint >> = other [
	(self class = other class) ifFalse: [ ^false ].
	(self version = other version) ifFalse: [ ^false ].
	^true.
]

{ #category : 'comparing' }
PBFixedVersionDependencyConstraint >> hash [
	^ self printString hash
]

{ #category : 'initialization' }
PBFixedVersionDependencyConstraint >> initializeWith: aSemanticVersion [
	version := aSemanticVersion
]

{ #category : 'testing' }
PBFixedVersionDependencyConstraint >> isCompatibleWith: aSemanticVersion [ 
	
	^ version = aSemanticVersion 
]

{ #category : 'testing' }
PBFixedVersionDependencyConstraint >> isFixed [

	^ true
]

{ #category : 'printing' }
PBFixedVersionDependencyConstraint >> printOn: aStream [

	version printOn: aStream
]

{ #category : 'accessing' }
PBFixedVersionDependencyConstraint >> version [
	^ version
]
