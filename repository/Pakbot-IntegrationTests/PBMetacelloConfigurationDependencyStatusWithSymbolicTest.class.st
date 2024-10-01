Class {
	#name : 'PBMetacelloConfigurationDependencyStatusWithSymbolicTest',
	#superclass : 'PBDependencyStatusTest',
	#category : 'Pakbot-IntegrationTests-DependencyStatus',
	#package : 'Pakbot-IntegrationTests',
	#tag : 'DependencyStatus'
}

{ #category : 'utils' }
PBMetacelloConfigurationDependencyStatusWithSymbolicTest >> createProjectDependency [

	^ PBMetacelloConfigurationProjectDependency  
		name: 'CargoTestExample'
		repositoryUrl: 'http://smalltalkhub.com/mc/Pharo/CargoTestRepository/main'
		version: #stable
]

{ #category : 'utils' }
PBMetacelloConfigurationDependencyStatusWithSymbolicTest >> installProject [

	Metacello new
		configuration: 'CargoTestExample';
		repository: 'http://smalltalkhub.com/mc/Pharo/CargoTestRepository/main';
		version: #stable;
		load.

]
