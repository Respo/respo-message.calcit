
import { main_BANG_ } from "./js-out/respo-message.main.js"

main_BANG_()

if (import.meta.hot) {
  import.meta.hot.accept('./js-out/respo-message.main.js', (main) => {
    main.reload_BANG_()
  })
}
