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

/*
async function setHeaders(event) {
   event.preventDefault();

   const acceptHeaders = 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9';
   event.detail.fetchOptions.headers["accept"] = acceptHeaders;

   event.detail.resume();
 }

 self.addEventListener("turbo:before-fetch-request", setHeaders);
*/
