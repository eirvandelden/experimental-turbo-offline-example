import { Application } from "@hotwired/stimulus"
import * as Turbo from "turbo"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

Turbo.cache.store = "disk";

function onError(event) {
  // TODO: if offline
  event.preventDefault();
  console.log("prevented defaults!")
}

self.addEventListener('turbo:fetch-request-error', onError);
