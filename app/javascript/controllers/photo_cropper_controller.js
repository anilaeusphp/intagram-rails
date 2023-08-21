import { Controller } from "@hotwired/stimulus"
import Cropper from "cropperjs";
export default class extends Controller {
  static targets = ["image","form","xOffset","yOffset","width","height"]
  connect() {
    const controller = this;
    console.log("Form from edit is" , this.formTarget)
    console.log("Image target is ", this.imageTarget)
    console.log("xOffset", this.xOffsetTarget)
    console.log("yOffset", this.yOffsetTarget)
    console.log("width", this.widthTarget)
    console.log("height", this.heightTarget)
    const cropper = new Cropper(this.imageTarget, {
      aspectRatio: 16/9,
      crop(event) {
        controller.xOffsetTarget.value = event.detail.x;
        controller.yOffsetTarget.value = event.detail.y;
        controller.widthTarget.value = event.detail.width;
        controller.heightTarget.value = event.detail.height;
      }
    })
  }
}
