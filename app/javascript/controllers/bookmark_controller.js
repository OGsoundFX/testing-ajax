import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookmark"
export default class extends Controller {
  static targets = ["icon"]

  connect() {
  }
  
  bookmark(event) {
    event.preventDefault()
    const url = event.currentTarget.href
    fetch(url)
      .then(response => response.text())
      .then(data => this.iconTarget.innerHTML = data)
  }
}
