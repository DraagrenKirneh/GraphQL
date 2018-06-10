| mapper field schema |

mapper = GqlFieldMapper new name: 'RootQueryType'.
field := GqlResolvableField name: 'hello' type: #GraphQLString resolver: [ 'world' ].
mapper addField: field.

schema := GqlSchema new.
schema basicQuery: mapper.

| doc f |

doc := GqlQueryParser parse: '{
  mainAccount {
    drafts(first: 20) {
      ...previewInfo
    }
  }
}

fragment previewInfo on Email {
  subject
  bodyPreviewSentence
}'.

f := GqlResolverContext on: doc.
f handle

