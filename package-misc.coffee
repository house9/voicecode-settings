localPackage = Packages.register
  name: 'jh-misc'
  description: 'Misc'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]

localPackage.command 'do-it',
  spoken: 'do it'
  description: 'Type `- [ ] ` for github and Evernote lists'
  enabled: true
  action: ->
    @string "- [ ] "

localPackage.command 'marco-polo',
  spoken: 'marco polo'
  description: 'find in project'
  enabled: true
  action: ->
    @key 'f', ['command', 'shift']
