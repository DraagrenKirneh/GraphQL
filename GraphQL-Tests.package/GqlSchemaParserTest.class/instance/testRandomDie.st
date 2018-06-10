tests
testRandomDie
	
	| schema |
	schema := GqlSchemaParser parse: 'type RandomDie {
  		roll(numRolls: Int!): [Int]
	}

	type Query {
  		getDie(numSides: Int): RandomDie
	}'.