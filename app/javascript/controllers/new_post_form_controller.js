import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-post-form"
export default class extends Controller {
  static targets= ['photoFile', "selectFileButton"]
  connect() {

  }

  selectFile(e){
    e.preventDefault();
    this.photoFileTarget.click();
  }

  submitForm(){
    console.log("Form tried to be submitted");
    this.element.submit(); // element referred as where controller binded to and in this example it is binded to form,
    //         <%= form_with model: Post.new, data: { controller: "new-post-form" } do |f| %>
  }
}
