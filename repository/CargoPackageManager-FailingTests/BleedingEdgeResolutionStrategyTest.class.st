Class {
	#name : 'BleedingEdgeResolutionStrategyTest',
	#superclass : 'RepositoryBasedTest',
	#category : 'CargoPackageManager-FailingTests-Solver',
	#package : 'CargoPackageManager-FailingTests',
	#tag : 'Solver'
}

{ #category : 'tests' }
BleedingEdgeResolutionStrategyTest >> testVersionForIn [
	| strategy packageVersionRef |
	
	strategy := CGOBleedingEdgeResolutionStrategy new.

	packageVersionRef := strategy 
					versionOf: #'Seaside-Flow'
					in: repository asOrderedCollection
					forEnvironment: #( #pharo ).
	self
		assert: packageVersionRef asString
		equals: 'Seaside-Flow@3.1.0'.


]
