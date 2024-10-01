"
Error raised when a not-supported repository Url is found.
"
Class {
	#name : 'PBInvalidRepositoryUrlError',
	#superclass : 'PBError',
	#category : 'Pakbot-Minimal-Repository',
	#package : 'Pakbot-Minimal',
	#tag : 'Repository'
}

{ #category : 'signaling' }
PBInvalidRepositoryUrlError >> signal: aUrl [
	^ super signal: 'Url not supported: ' , aUrl , ' !'
]
