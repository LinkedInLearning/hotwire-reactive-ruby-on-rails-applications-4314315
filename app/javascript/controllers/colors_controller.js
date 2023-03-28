import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="colors"
export default class extends Controller {
  static targets = ['input', 'card'];

  connect() {
  }

  colorizeCard() {
    this.cardTarget.classList.remove('bg-white');
    this.cardTarget.style = `background-color: ${this.inputTarget.value}`;
  }
}
