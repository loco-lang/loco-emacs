; Syntax highlighting queries for Rail

; Keywords (only those that appear in grammar rules)
[
  "actor"
  "automation"
  "composite"
  "const"
  "do"
  "else"
  "fork"
  "if"
  "import"
  "intrinsic"
  "launch"
  "let"
  "new"
  "on"
  "proc"
  "pub"
  "route"
  "send"
  "start"
  "startup"
  "state"
] @keyword

; Relational/conditional keywords
[
  "if"
  "else"
] @conditional

; Boolean literals
[
  "true"
  "false"
] @boolean

; Operators
[
  "and"
  "or"
  "not"
] @operator

; Literal values
(integer) @number
(string) @string
(char) @character

; Procedure/function names
(proc_definition
  name: (identifier) @function)

; Composite type names
(composite_definition
  name: (identifier) @type)

; Parameters
(parameter
  name: (identifier) @parameter)

; Type references (in parameter positions)
(parameter
  type: (path_ident
    (identifier) @type))

; Return types
(proc_definition
  (path_ident
    (identifier) @type))

; Variables (all other identifiers)
(identifier) @variable

; Arithmetic operators
[
  "+"
  "-"
] @operator

; Comparison operators
[
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
] @operator

; Delimiters
[
  "."
  ","
  ";"
  ":"
  "::"
  "=>"
  "->"
] @punctuation.delimiter

; Brackets
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket
