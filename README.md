# GraphQL

Smalltalk Pharo Implementation of [GraphQL](https://graphql.org/).
Work in progress...

# Installation

```smalltalk
Metacello new
   baseline: 'GraphQL';
   repository: 'github://DraagrenKirneh/GraphQL';
   load.
```

# Example

```smalltalk

| mutation response payload id query |
	
(ZnServer startDefaultOn: 8080) delegate: GqlExampleLinkFeed createDelegate.

mutation := { 
	'query' -> 'mutation { 
		post(name: "Pharo", url: "www.pharo.org") { id }
	}'
 } asDictionary.

response := ZnEasy 
	post: ZnServer default localUrl
	data: (ZnStringEntity json: (STONJSON toString: mutation)).

payload := STONJSON fromString: response contents.

id := { 'data' . 'post' . 'id' } inject: payload into: [ :dct :item | dct at: item	].
	
query := Dictionary new
	at: 'query' put: 'query root($id: ID){ link(id: $id) { name 	url }}';
	at: 'variables' put: { 'id' -> id } asDictionary;
	yourself.
	
response := ZnEasy 
	post: ZnServer default localUrl
	data: (ZnStringEntity json: (STONJSON toString: query)).
	
payload := STONJSON fromString: response contents.
payload inspect
```