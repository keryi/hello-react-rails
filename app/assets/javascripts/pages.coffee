OneTimeClickLink = React.createClass
  getInitialState: ->
    { clicked: false }

  link_clicked: ->
    @setState(clicked: true)
    console.log 'Click click!!'

  render: ->
    unless @state.clicked
      React.DOM.div(
        { className: 'one-time-click-link' },
        React.DOM.a(
          { href: 'javascript:void(0)', onClick: @link_clicked },
          'Click!'
        )
      )
    else
      React.DOM.div(
        { className: 'one-time-clicked-link' },
        React.DOM.span({}, 'Link has been clicked')
      )

$ ->
  otc_link = React.createFactory(OneTimeClickLink)

  React.render(otc_link(), document.body)
