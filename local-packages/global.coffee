localPackage = Packages.register
  name: 'jh-global'
  description: 'Misc Global commands'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]

# TODO: scope this to specific apps
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

localPackage.command 'copy-less',
  spoken: 'copy less'
  enabled: true
  action: ->
    @key 'v', ['command', 'shift']
