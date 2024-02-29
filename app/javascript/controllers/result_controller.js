import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loading"
export default class extends Controller {
  connect() {
    console.log("a bit too much");
    this.#resultWin();
  }

  #resultWin() {
    // Some code
    // TODO Display Animation
  }
}