import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }
  static targets = ["location", "showResult", "input"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: 'country,region,place,postcode,locality,neighborhood'
    })
    this.geocoder.addTo(this.inputTarget)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
  }

  #setInputValue(event) {
    new CustomEvent("locationSelected", {
      detail: {
        location: event.result["place_name"],
      },
    });

    const placeNameWithPin = `📍 ${event.result["place_name"]}`;

    this.showResultTarget.innerText = placeNameWithPin;
    this.locationTarget.value = event.result["place_name"];
  }

  #clearInputValue() {
    this.locationTarget.value = "";
  }

  disconnect() {
    this.geocoder.onRemove();
  }
}
