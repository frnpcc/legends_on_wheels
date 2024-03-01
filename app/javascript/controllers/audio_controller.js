import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="audio"
export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log("hello");
    console.log("button", this.buttonTarget);
    document.getElementById("button").addEventListener("click", event => {
      event.preventDefault()
      const audio = document.querySelector(".audio");
      audio.volume = 0.2;
      audio.play();
    });
  }
}
