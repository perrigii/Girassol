import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="copy-url"
export default class extends Controller {
  static targets = ["link"]

  connect() {
  }
  
  clipboard(event) {
    this.linkTarget.select()
    document.execCommand("copy")
    event.currentTarget.disabled = true
  }
}
