import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["carType", "location", "vehicleOutput", "locationOutput"]

  connect() {
    console.log("Selection controller connected");
  }

  updateVehicle() {
    this.vehicleOutputTarget.textContent = `Vehicle: ${this.carTypeTarget.value}`;
  }

  updateLocation() {
    this.locationOutputTarget.textContent = `Race Location: ${this.locationTarget.value}`;
  }
}
