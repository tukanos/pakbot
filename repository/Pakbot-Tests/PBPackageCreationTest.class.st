Class {
	#name : 'PBPackageCreationTest',
	#superclass : 'PBTest',
	#instVars : [
		'project',
		'systemPackageOrganizer'
	],
	#category : 'Pakbot-Tests-Model',
	#package : 'Pakbot-Tests',
	#tag : 'Model'
}

{ #category : 'tests' }
PBPackageCreationTest >> setUp [

	super setUp.
	project := registry newProjectNamed: 'test'.
	project repository: PBGitMemoryRepository new.
	
	systemPackageOrganizer := PackageOrganizer new.
	registry systemPackageOrganizer: systemPackageOrganizer.
]

{ #category : 'tests' }
PBPackageCreationTest >> testCreateAlreadyExistingPackageRaisesException [

	| packageName |
	packageName := 'NewPackage'.
	project createPackageNamed: packageName.
	
	self
		should: [project createPackageNamed: packageName]
		raise: PBSystemPackageAlreadyDefined
]

{ #category : 'tests' }
PBPackageCreationTest >> testCreateExistingPackageInSystemRaisesException [

	| packageName |
	packageName := 'NewPackage'.
	systemPackageOrganizer ensurePackage: packageName.

	self should: [ project createPackageNamed: packageName ] raise: PBSystemPackageAlreadyDefined
]

{ #category : 'tests' }
PBPackageCreationTest >> testCreateNonExistingPackageSucceeds [

	| packageName |
	packageName := 'NewPackage'.
	project createPackageNamed: packageName.
	
	self assert: (project hasPackageNamed: packageName)
]
