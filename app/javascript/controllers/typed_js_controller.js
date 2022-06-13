// app/javascript/controllers/typed_js_controller.js
import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Curate your own movie list", "for all your favourite films"],
      typeSpeed: 100,
      loop: true
    });
  }
}
