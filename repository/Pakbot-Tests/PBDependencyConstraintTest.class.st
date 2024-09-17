Class {
	#name : 'PBDependencyConstraintTest',
	#superclass : 'TestCase',
	#category : 'Pakbot-Tests-Dependencies',
	#package : 'Pakbot-Tests',
	#tag : 'Dependencies'
}

{ #category : 'tests' }
PBDependencyConstraintTest >> testFromString [
	| dependency |
	dependency := PBFixedVersionDependencyConstraint fromString: '=1.0'.
	self 
		assert: dependency class
		equals: PBFixedVersionDependencyConstraint.
	self
		assert: dependency asString
		equals: '1.0'
]

{ #category : 'tests' }
PBDependencyConstraintTest >> testFromStringWithBadVersion [

	self assert: (PBFixedVersionDependencyConstraint fromString: '=foo') version isInvalid
]
