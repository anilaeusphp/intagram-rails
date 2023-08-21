import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="apply-filter"
export default class extends Controller {
    static targets = ["image", "filterButton", "imageContainer","filterName"]

    connect() {
    }

    applyFilter(e) {
        const filterName = e.target.dataset.filterName;
        console.log("asdasd", this.filterNameTarget);
        this.imageTarget.classList.remove("original","grayscale", "hue-rotate", "sepia", "contrast", "opacity", "invert");
        this.imageTarget.classList.add(filterName);
        // this.imageTarget = e.target.dataset.filterName
        console.log("FilterNameToBeSet : ", this.filterNameTarget);
        console.log("FilterNameValue : ", filterName);
        this.filterNameTarget.value = filterName;
    }
}
