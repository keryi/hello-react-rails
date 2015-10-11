OneTimeClickLink = React.createClass
  getInitialState: ->
    { clicked: false }

  link_clicked: ->
    @setState(clicked: true)
    console.log 'Click click!!'

  child: ->
    {
      false: React.DOM.a({ href: 'javascript:void(0)', onClick: @link_clicked }, 'Click'),
      true: React.DOM.span({}, 'You have clicked the link!')
    }[@state.clicked]

  render: ->
    React.DOM.div({ className: 'one-time-click-link' }, @child())

$ ->
  otc_link = React.createFactory(OneTimeClickLink)

  React.render(otc_link(), document.body)
