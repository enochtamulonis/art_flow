import { Controller } from "stimulus"

export default class extends Controller {

  openCart(event) {
    console.log("clicked cart button")
    event.preventDefault();
    document.getElementById("sidebar").style.width = "500px";
  }
}
