import { Controller } from "@hotwired/stimulus"

const NORMAL_CLASS = "new-ul-link block py-2 px-3 md:p-0 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent";
const SELECTED_CLASS = "new-ul-link block py-2 px-3 md:p-0 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:dark:text-blue-500 dark:bg-blue-600 md:dark:bg-transparent";
export default class extends Controller {
  connect() {
    this.navbarLinkClass();
  }

  navbarLinkClass(){
    const elements = Array.from(document.getElementsByClassName('new-ul-link'));
    const currentLocation = window.location.pathname;
    let use = 0;

    if (currentLocation == "/challenges/new"){
      use = 3;
    } else if(currentLocation.startsWith('/challenges')){
      use = 2;
    } else if(currentLocation == "/confessions/new"){
      use = 1;
    } else if(currentLocation == "/comments"){
      use = 4;
    }
    
    elements.forEach(el=>el.className = NORMAL_CLASS);
    elements[use].className = SELECTED_CLASS;
  }
}
