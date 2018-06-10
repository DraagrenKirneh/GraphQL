adding
bind

	spreads do: [ :each | | f |
		f := fragments at: each name.
		each fragment: f
	].