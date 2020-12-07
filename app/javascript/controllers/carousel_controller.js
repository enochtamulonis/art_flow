import { Controller } from "stimulus"

let totalImages

let currentScreenSize

export default class extends Controller {
  static targets = ["image", "buttons"]

    initialize() {
      this.showImage(0);
      this.setScreenSize();
      totalImages = this.imageTargets.length;
    }

    setScreenSize() {
      currentScreenSize = window.innerWidth;
    }

    toggleButtons(event) {
      let screenIsBig = currentScreenSize > 768;
      if (screenIsBig) {
        this.buttonsTarget.classList.toggle("md:hidden");
      }
    }

    nextImage(event) {
      this.hideImage(event);
      let nextI = this.index + 1
      if (document.getElementById(`image-${nextI}`) !== null) {
        this.showImage(nextI)
      } else {
        this.showImage(0);
      }
    }

    previousImage(event) {
      this.hideImage(event);
      let prevI = this.index - 1;
      console.log(this.index);
      if (this.index == 0) {
        this.showImage(totalImages - 1);
      } else {
        this.showImage(prevI);
      }
    }

    showImage(index) {
      this.index = index;
      this.imageTargets.forEach((el, i) => {
        if (index == i) {
          el.classList.toggle("hidden");
        }
      })
    }

    hideImage(event) {
      this.imageTargets.forEach((el, i) => {
        if (this.index == el.dataset.index) {
          el.classList.toggle("hidden");
        }
      });

    }
}
