import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = [ "form", "itemsList", "searchInput", "selectCategory", "selectColor", "selectShipping"  ]

  refresh() {
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}&category=${this.selectCategoryTarget.value}&color=${this.selectColorTarget.value}&shipping=${this.selectShippingTarget.value}`;
    fetch(url, { headers: { 'Accept': 'text/plain' } })
    .then(response => response.text())
    .then((data) => {
      this.itemsListTarget.outerHTML = data;
    })
  }
}
