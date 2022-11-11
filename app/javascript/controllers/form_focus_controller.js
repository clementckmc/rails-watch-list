import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form"]
  connect() {
    // console.log("The 'form_focus' controller is now loaded!")
    const comment = document.querySelector("#bookmark_comment");
    comment.setAttribute("data-form-focus-target", "form");
  }

  focus(event) {
    console.log(event);
    this.formTarget.focus();
  }
}
