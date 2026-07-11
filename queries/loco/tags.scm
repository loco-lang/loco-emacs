; Tags / Symbol outline queries for Rail
; Provides named definitions for document outline, go-to-symbol, and breadcrumbs.

; Procedure definitions
(proc_definition
  name: (identifier) @name
  (#set! "kind" "Function")) @definition.procedure

; Composite type definitions
(composite_definition
  name: (identifier) @name
  (#set! "kind" "Struct")) @definition.composite

; Top-level binding declarations
(binding_declaration
  name: (identifier) @name
  (#set! "kind" "Variable")) @definition.binding

; Route definitions
(route_definition
  name: (identifier) @name
  (#set! "kind" "Function")) @definition.route

; Automation definitions
(automation_definition
  name: (identifier) @name
  (#set! "kind" "Function")) @definition.automation

; State entries inside actor definitions
(state_entry
  name: (identifier) @name
  (#set! "kind" "Method")) @definition.state

; Composite fields
(composite_field
  name: (identifier) @name
  (#set! "kind" "Field")) @definition.field

; Parameters
(parameter
  name: (identifier) @name
  (#set! "kind" "Parameter")) @definition.parameter

; Import targets
(import_declaration
  (identifier) @name
  (#set! "kind" "Module")) @definition.import
