import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="signup"
export default class extends Controller {
  static targets = ["patient", "therapist"]
  connect() {
    console.log('connected')
  }

  showpatient() {
    this.patientTarget.classList.remove("d-none")
    this.therapistTarget.classList.add("d-none")
  }

  showtherapist() {
    this.patientTarget.classList.add("d-none")
    this.therapistTarget.classList.remove("d-none")
  }
}
