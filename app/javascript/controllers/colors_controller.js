import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="colors"
export default class extends Controller {
  static targets = ['input', 'card'];
  static classes = ['reset'];

  connect() {
  }

  colorizeCard() {
    this.cardTarget.classList.remove('bg-white');
    this.cardTarget.style = `background-color: ${this.inputTarget.value}`;
  }

  resetCard() {
    this.cardTarget.style = '';
    this.cardTarget.classList.remove('border-black');
    this.cardTarget.classList.add(...this.resetClasses);
  }
}
