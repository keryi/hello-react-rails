$ ->
  link_clicked = (e) ->
    React.render(virtual_dom_after_click, document.body)

  virtual_dom_after_click = React.DOM.div(
    {},
    React.DOM.span({}, 'You clicked the link!')
  )

  virtual_dom_before_click = React.DOM.div(
    { id: 'welcome' },
    React.DOM.a(
      { href: 'javascript:void(0)', id: 'btn_welcome', onClick: link_clicked },
      'Click me'
    )
  )

  React.render(virtual_dom_before_click, document.body)
