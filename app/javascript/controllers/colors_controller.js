import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="colors"
export default class extends Controller {
  static targets = ['input', 'card', 'message'];
  static classes = ['reset'];
  static values = {
    successMessage: { type: String, default: 'Color changed!' },
    resetMessage: { type: String, default: 'Color reset!' },
  }

  connect() {
  }

  colorizeCard() {
    this.cardTarget.classList.remove('bg-white');
    this.cardTarget.style = `background-color: ${this.inputTarget.value}`;
    this.messageTarget.textContent = this.successMessageValue;
  }

  resetCard() {
    this.cardTarget.style = '';
    this.cardTarget.classList.remove('border-black');
    this.cardTarget.classList.add(...this.resetClasses);
    this.messageTarget.textContent = this.resetMessageValue;
  }
}
