import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["carType", "locat", "vehicleOutput", "locationOutput"]

  connect() {
    console.log("Selection controller connected");
  }

  updateVehicle() {
    const formattedCarType = this.formatCarType(this.carTypeTarget.value);
    this.vehicleOutputTarget.textContent = `🚗 ${formattedCarType}`;
  }

  formatCarType(carType) {
    if (!carType) return '';

    return carType
      .replace(/_/g, ' ')
      .split(' ')
      .map(word => word.charAt(0).toUpperCase() + word.slice(1))
      .join(' ');
  }
}
