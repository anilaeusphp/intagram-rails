import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="photo-filter"
export default class extends Controller {
  static targets = ["image"]
  connect() {
    console.log("Welcome from photo filter controller")
  }
}
