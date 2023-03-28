import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="colors"
export default class extends Controller {
  static targets = ['input', 'card'];

  connect() {
  }

  inputTargetConnected() {
    this.cardTarget.style = 'background-color: red';
  }
}
