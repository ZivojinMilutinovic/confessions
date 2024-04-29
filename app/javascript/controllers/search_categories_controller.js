import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ['category', 'categoryId', 'inputSearch'];

    chooseCategory(event){
        const choosenCategory = event.target.innerText;
        const categoryId = event.target.dataset.categoryId;
        this.categoryTarget.innerText = choosenCategory;
        this.categoryIdTarget.value = categoryId;
        window.location.href= window.location.origin + `/?category_id=${categoryId}`
    }
}