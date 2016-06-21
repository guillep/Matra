loading
loadSeamless

	^ self callImageWithArgument: { 
		'config'.
		'http://smalltalkhub.com/mc/Pharo/Seamless/main'.
		'ConfigurationOfSeamless'.
		'--install=bleedingEdge' }