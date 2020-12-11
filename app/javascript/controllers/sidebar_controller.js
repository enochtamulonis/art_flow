import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["sidebar"]

  closeCart(event) {
    event.preventDefault();
    this.sidebarTarget.style.width = "0px";
  }
}
