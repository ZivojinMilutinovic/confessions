import { Controller } from "@hotwired/stimulus"

const COMMENTS = "comments";
const CONFESSIONS = "confessions";
export default class extends Controller {
    static targets = ['comments', 'newCommentForm'];

    initialize() {
      this.commentsOpened = false;
    }

    connect() {
      
      const likedConfessions = JSON.parse(localStorage.getItem("likedConfessions")) || {};
      const likeButtons = this.element.querySelectorAll(".confessions-like-button");
      const dislikedConfessions = JSON.parse(localStorage.getItem("dislikedConfessions")) || {};
      const dislikeButtons = this.element.querySelectorAll(".confessions-dislike-button");
      const likedComments = JSON.parse(localStorage.getItem("likedComments")) || {};
      const dislikedComments = JSON.parse(localStorage.getItem("dislikedComments")) || {};

      likeButtons.forEach(button => {
        const confessionId = button.dataset.id;
        if (likedConfessions[confessionId] || likedComments[confessionId]) {
          button.classList.add("liked-button");
        }
      });

      dislikeButtons.forEach(button => {
        // maybe we set the green one we can not have two at the same time
        const confessionId = button.dataset.id;
         if (likedConfessions[confessionId] || likedComments[confessionId]) {
            return;
         }
        if (dislikedConfessions[confessionId] || dislikedComments[confessionId]) {
          button.classList.add("disliked-button");
        }
      });
    }

    likeDislikeNewComments(div){
      const likedComments = JSON.parse(localStorage.getItem("likedComments")) || {};
      const dislikedComments = JSON.parse(localStorage.getItem("dislikedComments")) || {};
      const likeButtons = div.querySelectorAll(".confessions-like-button");
      const dislikeButtons = div.querySelectorAll(".confessions-dislike-button");
      

      likeButtons.forEach(button => {
        const confessionId = button.dataset.id;
        if (likedComments[confessionId]) {
          button.classList.add("liked-button");
        }
      });

      dislikeButtons.forEach(button => {
        // maybe we set the green one we can not have two at the same time
        const confessionId = button.dataset.id;
         if (likedComments[confessionId]) {
            return;
         }
        if (dislikedComments[confessionId]) {
          button.classList.add("disliked-button");
        }
      });
    }

    loadMoreCommentsForConfession(event){
      const page = event.target.dataset.page;
      const confessionId = event.currentTarget.dataset.id;
      event.target.remove();
      this.fetchComments(confessionId, page);
    }

    viewComments(event) {
      const confessionId = event.currentTarget.dataset.id;
      if(!this.commentsOpened){
        this.fetchComments(confessionId);
        this.commentsOpened = true;
      }
      this.commentsTarget.classList.toggle('hidden');
      //this.fetchTurboStreamComments(confessionId);
    }

    like(event) {
        const clickedButton = event.currentTarget;
        const spanNumberOfLikes = clickedButton.querySelector('span')
        const confessionId = clickedButton.dataset.id;
        const likedLocaleStorage = clickedButton.dataset.typeaction == CONFESSIONS ? "likedConfessions" : "likedComments";
        const dislikedLocalStorage = clickedButton.dataset.typeaction == CONFESSIONS ? "dislikedConfessions" : "dislikedComments";
        const likedConfessions = JSON.parse(localStorage.getItem(likedLocaleStorage)) || {};
        const methodToCall = clickedButton.dataset.typeaction == CONFESSIONS ? CONFESSIONS : COMMENTS;
        const dislikedConfessions = JSON.parse(localStorage.getItem(dislikedLocalStorage)) || {};

        // when the confession was already liked
        if (likedConfessions[confessionId]){
            this.removeLikeFromConfession(likedConfessions, confessionId, clickedButton, spanNumberOfLikes, likedLocaleStorage, methodToCall);
            return;
        }
        // when the confession was already disliked
        const body = {}
        if (dislikedConfessions[confessionId]){
          body.dislikes = -1;
          const spanNumberOfDislikes = clickedButton.parentElement.querySelector('.confessions-dislike-button span');
          delete dislikedConfessions[confessionId];
          localStorage.setItem(dislikedLocalStorage, JSON.stringify(dislikedConfessions));
          clickedButton.parentElement.querySelector('.confessions-dislike-button').classList.remove("disliked-button");
          spanNumberOfDislikes.innerHTML =  parseInt(spanNumberOfDislikes.innerHTML) - 1;
        }


        likedConfessions[confessionId] = true;
        clickedButton.classList.add("liked-button");
        spanNumberOfLikes.innerHTML =  parseInt(spanNumberOfLikes.innerHTML) + 1;
        localStorage.setItem(likedLocaleStorage, JSON.stringify(likedConfessions));
        body.likes = 1;
        this.fetchLikesDislikes(confessionId, body, methodToCall)
    }

    dislike(event){
      const clickedButton = event.currentTarget;
      const spanNumberOfDislikes = clickedButton.querySelector('span')
      const confessionId = clickedButton.dataset.id;
      const likedLocaleStorage = clickedButton.dataset.typeaction == CONFESSIONS ? "likedConfessions" : "likedComments";
      const dislikedLocalStorage = clickedButton.dataset.typeaction == CONFESSIONS ? "dislikedConfessions" : "dislikedComments";
      const methodToCall = clickedButton.dataset.typeaction == CONFESSIONS ? CONFESSIONS : COMMENTS;
      const dislikedConfessions = JSON.parse(localStorage.getItem(dislikedLocalStorage)) || {};
      const likedConfessions = JSON.parse(localStorage.getItem(likedLocaleStorage)) || {};

      // when the confession was already disliked
      if (dislikedConfessions[confessionId]){
          this.removeDislikesFromConfession(dislikedConfessions, confessionId, clickedButton, spanNumberOfDislikes, dislikedLocalStorage, methodToCall);
          return;
      }

      // when the confession was already liked
      const body = {};
      if (likedConfessions[confessionId]){
          const spanNumberOfLikes = clickedButton.parentElement.querySelector('.confessions-like-button span');
          body.likes = -1;
          delete likedConfessions[confessionId];
          localStorage.setItem(likedLocaleStorage, JSON.stringify(likedConfessions));
          clickedButton.parentElement.querySelector('.confessions-like-button').classList.remove("liked-button");
          spanNumberOfLikes.innerHTML =  parseInt(spanNumberOfLikes.innerHTML) - 1;
      }

      dislikedConfessions[confessionId] = true;
      localStorage.setItem(dislikedLocalStorage, JSON.stringify(dislikedConfessions));
      clickedButton.classList.add("disliked-button");
      spanNumberOfDislikes.innerHTML =  parseInt(spanNumberOfDislikes.innerHTML) + 1;
      body.dislikes = 1;

      this.fetchLikesDislikes(confessionId, body, methodToCall);
    }

    fetchLikesDislikes(confessionId, body, method) {
      const csrfToken = document.querySelector("meta[name=csrf-token]").content;
      const url = `/${method}/${confessionId}/like_dislike`;
      fetch(url, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "X-CSRF-Token": csrfToken, // Include CSRF token in the request headers
        },
        body: JSON.stringify(body)
      })
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.text();
        })
        .catch(error => {
          // Handle errors
          console.error('There was a problem with the fetch operation:', error);
        });
    }

    fetchComments(confessionId, page = 1){
      const div = document.getElementById("comments_"+confessionId);
      fetch(`/comments?id=${confessionId}&page=${page}`, {
        method: "GET"
      })
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.text();
        })
        .then(res=>{
          if(page == 1){
            div.innerHTML = res;
          }else{
            div.innerHTML += res;
          }
          this.likeDislikeNewComments(div);
        })
        .catch(error => {
          // Handle errors
          console.error('There was a problem with the fetch operation:', error);
        });
    }

    fetchTurboStreamComments(confessionId){
      const csrfToken = document.querySelector("meta[name=csrf-token]").content;
      const divTarget = document.getElementById('comments_' + confessionId);
      fetch(`/comments/${confessionId}/index`, {
        method: "POST",
        headers: {
          "Accept": "text/vnd.turbo-stream.html",
          "X-CSRF-Token": csrfToken, // Include CSRF token in the request headers
        }
      })
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.text()
        })
        .then(html => {
          let tempElement = document.createElement('div');
          tempElement.innerHTML = html;

          divTarget.appendChild(tempElement);
          Turbo.renderStreamMessage(html)
        })
        .catch(error => {
          // Handle errors
          console.error('There was a problem with the fetch operation:', error);
        });
    }

    removeLikeFromConfession(likedConfessions, confessionId, clickedButton, spanNumberOfLikes,likedStorage, methodToCall){
      delete likedConfessions[confessionId];
      localStorage.setItem(likedStorage, JSON.stringify(likedConfessions));
      clickedButton.classList.remove("liked-button");
      spanNumberOfLikes.innerHTML =  parseInt(spanNumberOfLikes.innerHTML) - 1;
      //remove like
      this.fetchLikesDislikes(confessionId, { likes: -1 }, methodToCall)
      return;
    }

    removeDislikesFromConfession(dislikedConfessions, confessionId, clickedButton, spanNumberOfDislikes, dislikedStorage, methodToCall){
      delete dislikedConfessions[confessionId];
      localStorage.setItem(dislikedStorage, JSON.stringify(dislikedConfessions));
      clickedButton.classList.remove("disliked-button");
      spanNumberOfDislikes.innerHTML =  parseInt(spanNumberOfDislikes.innerHTML) - 1;
      //remove dislike
      this.fetchLikesDislikes(confessionId, { dislikes: -1 }, methodToCall)
    }

    postComment(event){
      const clickedButton = event.currentTarget;
      clickedButton.disabled = true;
      const formData =  new FormData(this.newCommentFormTarget);
      const csrfToken = document.querySelector("meta[name=csrf-token]").content;
      fetch(this.newCommentFormTarget.action, {
          method: this.newCommentFormTarget.method,
          body: formData,
          headers: {
              "X-Requested-With": "XMLHttpRequest",
              "X-CSRF-Token": csrfToken,
          }
        })
        .then(response => {
          // Re-enable the submit button when the fetch completes
          clickedButton.disabled = false;
          this.newCommentFormTarget.reset();
          return response.json();
        })
        .then(data => {
          // Handle the response data as needed
          if(data["status"] == "success"){
            const confessionId = formData.get("comment[confession_id]");
            this.fetchComments(confessionId);
          }
        })
        .catch(error => {
          // Re-enable the submit button if there's an error
          clickedButton.disabled = false;
          this.newCommentFormTarget.reset();
          console.error('Error:', error);
        });
      };
  }