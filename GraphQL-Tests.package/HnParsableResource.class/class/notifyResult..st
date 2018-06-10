as yet unclassified
notifyResult: aMethod

	| ann |
	
	ann := TestSuiteEnded new.
	ann 
		testCase: self;
		testSelector: aMethod selector;
		testResult: self.
		
	TestCase historyAnnouncer 
		announce: ann