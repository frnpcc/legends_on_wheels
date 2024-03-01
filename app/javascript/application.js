// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import { Application } from "@hotwired/stimulus"
// import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"

window.Stimulus = Application.start()
// eagerLoadControllersFrom("controllers", Stimulus)
