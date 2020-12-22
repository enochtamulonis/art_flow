import { Controller } from "stimulus"

export default class extends Controller {

  openCart(event) {
    document.getElementById("sidebar").classList.toggle("hidden");
  }
}
