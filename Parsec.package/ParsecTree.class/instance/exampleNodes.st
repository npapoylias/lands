visual-nodes
exampleNodes

| t e v |
t := ParsecTree new.
e := t embededNodesOn: {'start' . 'expression' . 'number' . '7'}.
v := t roassalView.
v addAll: e.
v.

t := ParsecTree new.
e := t simpleNodeOn: 'expression'.
v := t roassalView.
v addAll: e.
v.

"forestNodesOn: element index: atIndex of: forestSize"

t := ParsecTree new.
e := t embededNodesOn: {'start' . 'expression' . 'number' . '7'}.
e := t forestNodesOn: e index: 1 of: 7.
v := t roassalView.
v addAll: e.
v.

t := ParsecTree new.
e := t embededNodesOn: {'start' . 'expression' . 'number' . '7'}.
e := t forestNodesOn: e index: 1 of: 7.
v := t roassalView.
v addAll: e.
v.

t := ParsecTree new.
e := t simpleNodeOn: 'expression'.
e := t forestNodesOn: e index: 1 of: 7.
v := t roassalView.
v addAll: e.
v.