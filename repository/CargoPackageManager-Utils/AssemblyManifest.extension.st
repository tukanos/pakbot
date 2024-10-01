Extension { #name : 'AssemblyManifest' }

{ #category : '*CargoPackageManager-Utils' }
AssemblyManifest classSide >> includesAny: aListOfPackageName [
	^ (self parts collect: #key) 
		includesAny: aListOfPackageName
]
