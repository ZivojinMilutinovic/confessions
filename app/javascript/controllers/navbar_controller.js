import { Controller } from "@hotwired/stimulus"

const BG_CLASS = 'bg-gray-900';
export default class extends Controller {
  connect() {
    this.navbarLinkClass();
  }

  navbarLinkClass(){
    const elements = document.getElementById('navbar-menu-div').children;
    const currentLocation = window.location.pathname;
    let use = 0;

    if(currentLocation.startsWith('/challenges')){
      use = 2;
    } else if(currentLocation == "/confessions/new"){
      use = 1;
    } else if(currentLocation == "/comments"){
      use = 4;
    }
    Array.from(elements).forEach(el => el.classList.remove(BG_CLASS));
    elements[use].classList.add(BG_CLASS);
  }
}
