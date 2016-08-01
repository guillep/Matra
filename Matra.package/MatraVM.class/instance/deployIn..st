deployment
deployIn: aMatraEnvironment 
	
	MatraHttpLoader new
		matraImage: aMatraEnvironment;
		version: aMatraEnvironment image majorVersionNumber;
		vmVersion: version;
		loadVm