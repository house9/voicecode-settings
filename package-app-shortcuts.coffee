localPackage = Packages.register
  name: 'app-shortcuts'
  description: 'application shortcuts'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]

localPackage.command 'copy-less',
  spoken: 'copy less'
  enabled: true
  action: ->
    @key 'v', ['command', 'shift']
