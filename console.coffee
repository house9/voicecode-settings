localPackage = Packages.register
  name: 'console-custom'
  description: 'common things in console for rails development, etc...'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]
  applications: [
    'com.googlecode.iterm2',
    'com.apple.Terminal'
  ]

localPackage.command 'awesome-print',
  spoken: 'awesome print'
  description: 'use awesome print with rails console'
  enabled: true
  grammarType: 'textCapture'
  oneArgument: true
  action: (input) ->
    if input?
      @string "ap #{Transforms.stud(input)}."
    else
      @string 'ap '

localPackage.command 'open-atom',
  spoken: 'atom'
  description: 'open atom from the current directory'
  enabled: true
  action: ->
    @string 'atom .'
    @key 'enter'

localPackage.command 'open-sublime',
  spoken: 'sublime'
  description: 'open sublime from the current directory'
  enabled: true
  action: ->
    @string 'sublime .'
    @key 'enter'

localPackage.command 'ruby-manager',
  spoken: 'ruby manager'
  description: 'run rvm'
  enabled: true
  grammarType: 'textCapture'
  oneArgument: true
  action: (input) ->
    if input?
      @string "rvm #{input}"
      @key 'enter'
    else
      @string 'rvm '

localPackage.command 'rails',
  spoken: 'rails'
  description: 'run rails with bundle exec'
  enabled: true
  grammarType: 'textCapture'
  oneArgument: true
  action: (input) ->
    if input?
      @string "bundle exec rails #{input}"
      @key 'enter'
    else
      @string 'bundle exec rails '

localPackage.command 'ruby-lint',
  spoken: 'ruby check'
  description: 'run robocop'
  enabled: true
  grammarType: 'textCapture'
  oneArgument: true
  action: (input) ->
    if input?
      @string 'bundle exec rubocop -a '
    else
      @string 'bundle exec rubocop '

localPackage.command 'ruby-spec',
  spoken: 'ruby spec'
  description: 'run rspec'
  enabled: true
  oneArgument: true
  action: (input) ->
    if input?
      @string "bundle exec rspec spec/#{input}"
    else
      @string "bundle exec rspec spec/"

localPackage.command 'rake',
  spoken: 'pitchfork'
  description: 'run rake'
  enabled: true
  grammarType: 'textCapture'
  oneArgument: true
  action: (input) ->
    if input?
      @string "bundle exec rake db:migrate db:test:prepare"
    else
      @string "bundle exec rake "

localPackage.command 'rake+enter',
  spoken: 'pitch rock'
  description: 'run rake then enter'
  enabled: true
  action: ->
    @string 'bundle exec rake '
    @key 'enter'

# TODO: make this an override of: `snipline`, for iterm/terminal
localPackage.command 'swift',
  spoken: 'swift'
  description: 'clear the current line in the console'
  enabled: true
  action: ->
    @key 'e', 'control'
    @key 'u', 'control'

# TODO: make this into something like `jet new branch`
localPackage.command 'git-checkout-new-branch',
  spoken: 'new branch'
  description: 'create a new branch'
  enabled: true
  oneArgument: true
  grammarType: 'textCapture'
  action: (input) ->
    @string "git checkout -b #{input}"

# TODO: make this an additional option to git (jet)
localPackage.command 'git-push-new-branch',
  spoken: 'jet fresh'
  description: 'push a new branch'
  enabled: true
  action: ->
    @string 'git push -u origin HEAD'
