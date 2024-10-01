"
Command to remove the Rpackage associated to a package unit.
"
Class {
	#name : 'PBRemovePackageFromSystemCommand',
	#superclass : 'PBPackageCommand',
	#category : 'Pakbot-Browser-Commands',
	#package : 'Pakbot-Browser',
	#tag : 'Commands'
}

{ #category : 'converting' }
PBRemovePackageFromSystemCommand >> asSpecCommand [
	^ super asSpecCommand
		iconName: #delete;
		name: 'Remove package from project and system';
		beDisabledWhenCantBeRun;
		yourself
]

{ #category : 'executing' }
PBRemovePackageFromSystemCommand >> execute [

	self package systemPackage removeFromSystem
]
