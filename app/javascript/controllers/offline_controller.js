import { Controller } from "@hotwired/stimulus"
import { Preloader } from "turbo"

// Connects to data-controller="offline"
export default class extends Controller {
  static values = {
    url: String
  }
  connect() {}

  async download(event) {
    // TODO:
    // - fetch a list of urls to cache, save to urlsToCache
    // - needed? ...performance.getEntriesByType('resource').map(r => r.name)
    // - call this.wb.messageSW({type: 'CACHE_URLS', payload: {urlsToCache})

    let csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

    let response = fetch(this.urlValue, {
      cache: "no-cache",
      headers: {
        "Accept": "application/json",
        "X-CSRF-Token": csrfToken
      }
    }).then((response) => {
      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
      }

      return response.json();
    }).then((urlsToCache) => {
      let preloader;
      preloader = new Preloader(Turbo.session)

      urlsToCache.forEach( (url) => {
        // TODO: while loading: loading
        // TODO: remove loading when done
        // debugger;
        preloader.preloadURL(url)
        .then((response) => {
          console.log('preloader', response);
        })
      });
    });
  }
}
