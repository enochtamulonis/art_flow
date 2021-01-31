import { Controller } from "stimulus"

export default class extends Controller {

  openCart(event) {
    document.getElementById("sidebar").classList.toggle("hidden");
  }

  openNavDropdown() {
    document.getElementById("navbar_dropdown").classList.toggle("hidden");
  }
}
