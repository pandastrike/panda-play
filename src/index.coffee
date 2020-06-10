export * from "./handle"
export * from "./event"
export * from "./mixin"

import * as Mixins from "./mixins"
import * as Connect from "./connect"
import * as Actions from "./actions"

{connect, diff, tag} = Mixins
{describe, event, observe, shadow} = Connect
{assign, bind, description, discard, form, render} = Actions

Metal =

  connect: Mixins._connect

  describe: Connect._describe
  event: Connect._event
  observe: Connect._observe
  shadow: Connect._shadow

  assign: Actions._assign
  bind: Actions._assign

export {
  Metal
  connect
  diff
  tag
  describe
  event
  observe
  shadow
  assign
  bind
  description
  discard
  form
  render
}
