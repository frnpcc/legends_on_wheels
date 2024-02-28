import { Controller } from "@hotwired/stimulus"
import "slick-carousel/slick/slick.min.js"
import "slick"
import { Application } from "stimulus"
import Carousel from "stimulus-carousel"

// Connects to data-controller="carousel"
export default class extends Controller {
  connect() {
    console.log("Shalom 🏆");
    // this.#initializeCarousel()

    const application = Application.start()
    application.register("carousel", Carousel)


  }

  // #initializeCarousel() {
  //   // this.carousel = new bootstrap.Carousel(this.element, {
  //   //   interval: 2000,
  //   //   wrap: false
  //   $(this.element).slick({
  //     dots: true,
  //     infinite: true,
  //     speed: 500,
  //     fade: true,
  //     cssEase: 'linear'
  //   });
  // }
}
