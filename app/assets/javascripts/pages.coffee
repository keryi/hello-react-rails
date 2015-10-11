OneTimeClickLink = React.createClass
  render: ->
    React.DOM.div(
      { className: 'one-time-click-link' },
      React.DOM.a(
        { href: 'javascript:void(0)' },
        'Click!'
      )
    )

$ ->
  otc_link = React.createElement(OneTimeClickLink)

  React.render(otc_link, document.body)
