import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  connect() {
    if (this.element.classList.contains("modal-close")) {
      this.element.classList.remove("modal-close")
    }
    this.element.classList.add("modal-open")
    console.log("oiee")
  }

  closeModal() {
    if (this.element.classList.contains("modal-open")) {
      this.element.classList.remove("modal-open")
    }
    this.element.classList.add("modal-close")

    setTimeout(()=>{
      this.element.remove();
    }, 300);
  }
}
