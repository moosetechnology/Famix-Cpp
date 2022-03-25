Class {
	#name : #FamixCppConditionalsGrammarTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'Famix-Cpp-Parser-Tests'
}

{ #category : #accessing }
FamixCppConditionalsGrammarTest >> parserClass [
	^ FamixCppConditionalsGrammar
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testBlockInBlock [
	self parse: '{
  for (int n=10; n>0; n--) {
    cout << n << ", ";
  }
  cout << "FIRE!\n";
  return 0;
}' rule: #block
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testCaseWithNestedBlocks [
	self parse: 'switch (mType)
	{
	  case DKEOK:
	    isLastBlock = recalcRampToFixGoalSoft( vPrevEndSafe,
						   indexNew,
						   firstRun);
	    if (firstRun)
	    {
		// comment
		// comment2
		vMaxBrakeSafe = vMaxBrake;
	    }
	    break;
#ifdef ABEND
	  case DKEOK2:
	    isLast = recalcRampToFixGoalDrive( indexNew );
	    break;
#endif //comm
	  default:
	    // comment:
	    isLast = recalcRampToFixGoalBrisk( indexNew );
	    break;
	}' rule: #switchCases
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testControlStructureDoWhile [
	self parse: 'do {
    cout << "Enter number (0 to end): ";
    cin >> n;
    cout << "You entered: " << n << "\n";
  } while (n != 0)' rule: #controlStructure
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testControlStructureFor [
	self parse: 'for ( n=0, i=100 ; n!=i ; n++, i-- )
{
   // whatever here...
}' rule: #controlStructure
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testControlStructureIf1 [
	self parse: 'if (n==3)
    {
      cout << "countdown aborted!";
      break;
    }' rule: #controlStructure
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testControlStructureIf2 [
	self parse: 'if (x == 100)
  cout << "x is 100";
else
  cout << "x is not 100";' rule: #controlStructure
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testControlStructureIf3 [
	self parse: 'if (x > 0)
  cout << "x is positive";
else if (x < 0)
  cout << "x is negative";
else
  cout << "x is 0";' rule: #controlStructure
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testControlStructureIf4 [
	self parse: 'if (x == 100)
  cout << "x is 100";' rule: #controlStructure
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testControlStructureIfInFor [
	self parse: 'for (n=10; n>0; n--)
  {
    cout << n << ", ";
    if (n==3)
    {
      cout << "countdown aborted!";
      break;
    }
  }' rule: #controlStructure
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testControlStructureSwitch [
	self parse: 'switch (x) {
  case 1:
  case 2:
  case 3:
    cout << "x is 1, 2 or 3";
    break;
  default:
    cout << "x is not 1, 2 nor 3";
  }' rule: #controlStructure
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testControlStructureWhile [
	self parse: 'while (n>0) {
    cout << n << ", ";
    --n;
  }' rule: #controlStructure
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testFullWhileExample [
	^ self parse: self whileExample rule: #while
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testHelloWorld [
	self parse: '// ''Hello World!'' program 
 
#include <iostream>
 
int main()
{
  std::cout << "Hello World!" << std::endl;
  return 0;
}'
]

{ #category : #tests }
FamixCppConditionalsGrammarTest >> testSimpleBlock [
	self parse: '{
    cout << n << ", ";
  }' rule: #block
]

{ #category : #accessing }
FamixCppConditionalsGrammarTest >> whileExample [
	^ 'while ( !isLastBlock)
    {
	newBlock = (DynLABlCommonData*) dynLookAheadBuffer->getWithIndexRead(indexNew,
									     isInIpo);
	// wenn newBlock nicht mehr vorhanden, Abbruch, alles bearbeitet
	if(!newBlock)
	{
	    COCOUT(TraceIc, ICTRACE_DYNLOOKAH, << "newBlock mit index = "
		   << indexNew << " nach Wechsel motContrType nicht mehr vorhanden"
		   << endl );
	    return;
	}
	motContrType = (( DynLimBody*)newBlock->dynLimP)->getMotConType();
	switch (motContrType)
	{
	  case ICSOFT:
	    isLastBlock = recalcRampToFixGoalSoft( vPrevEndSafe,
						   indexNew,
						   firstRun);
	     break;
	  case ICDRIVE:
	    isLastBlock = recalcRampToFixGoalDrive( indexNew );
	    break;
	  default:
	    // default = ICBRISK:
	    isLastBlock = recalcRampToFixGoalBrisk( indexNew );
	    break;
	}
	firstRun = FALSE;
    }'
]
