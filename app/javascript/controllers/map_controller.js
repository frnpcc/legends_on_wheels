import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
// import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    geolocationHash: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkerToMap()
    this.#fitMapToMarker()
    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))
  }

  #addMarkerToMap() {
    const customMarker = document.createElement("div")
    customMarker.innerHTML = this.geolocationHashValue.marker_html

    new mapboxgl.Marker(customMarker)
      .setLngLat([ this.geolocationHashValue.lng, this.geolocationHashValue.lat ])
      .addTo(this.map)
  }

  #fitMapToMarker() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ this.geolocationHashValue.lng, this.geolocationHashValue.lat ])
    this.map.fitBounds(bounds, { padding: 100, maxZoom: 4, duration: 0 })
  }
}
