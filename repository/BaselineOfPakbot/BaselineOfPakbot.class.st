Class {
	#name : 'BaselineOfPakbot',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfPakbot',
	#package : 'BaselineOfPakbot'
}

{ #category : 'baselines' }
BaselineOfPakbot >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: #'Pakbot-Minimal';
				package: #'Pakbot-Core'
					with: [ spec requires: #('Pakbot-Minimal') ];
				package: #'Pakbot-Tests'
					with: [ spec requires: #('Pakbot-Core') ];
				package: #'Pakbot-IntegrationTests'
					with: [ spec requires: #('Pakbot-Core' 'Pakbot-Tests') ].

			spec
				group: 'core' with: #('Pakbot-Core');
				group: 'tests' with: #('Pakbot-Tests' 'Pakbot-IntegrationTests') ]
]

{ #category : 'dependencies' }
BaselineOfPakbot >> pakbotUI: spec [

	spec
		package: #'Pakbot-Browser' with: [ 
			spec requires: #( 'Pakbot-Core' ) ];
		package: #'Pakbot-Browser-Tests' with: [ 
			spec requires: #( 'Pakbot-Browser' ) ]
]
