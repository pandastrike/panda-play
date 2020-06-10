export * from "./handle"
export * from "./event"
export * from "./actions"
export * from "./mixin"

import * as Mixins from "./mixins"
import * as Connect from "./connect"

{connect, diff, tag} = Mixins
{describe, event, observe, shadow} = Connect

Metal =
  connect: Mixins._connect
  shadow: Connect._shadow

export {
  Metal
  connect
  diff
  tag
  describe
  event
  observe
  shadow
}
