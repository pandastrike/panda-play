import * as _ from "@dashkite/joy"
import * as c from "@dashkite/carbon"

greetings = [ "Hello", "Hola", "Bonjour", "Ciao",
  "Nǐ hǎo", "Konnichiwa", "Mahalo" ]

class extends c.Handle
  current: 0
  rotate: -> @dom.dataset.greeting = greetings[++@current % greetings.length]
  _.mixin @, [
    c.tag "x-world-greetings"
    c.initialize [
      c.shadow
      c.click "h1", [
        c.call @::rotate
      ]
      c.describe [
        c.render ({greeting}) ->
          console.log "rendering", "<h1>#{greeting}, World!</h1>"
          "<h1>#{greeting}, World!</h1>"
      ]
  ] ]
