import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["selectedArticles"];

  generate() {
    const checkboxes = this.element.querySelectorAll("input[type='checkbox']:checked");
    const selectedArticles = [];

    checkboxes.forEach((checkbox) => {
      selectedArticles.push({
        id: checkbox.value,
        title: checkbox.dataset.title
      });
    });

    this.selectedArticlesTarget.innerHTML = "";

    selectedArticles.forEach((article) => {
      const articleElement = document.createElement("div");
      articleElement.dataset.articleId = article.id;
      articleElement.innerHTML = `
        <h3>${article.title}</h3>
        <button data-action="click->generate-newsletter#removeArticle">Remove</button>
      `;
      this.selectedArticlesTarget.appendChild(articleElement);
    });
  }
  removeArticle(event) {
    const articleId = event.target.closest("[data-article-id]").dataset.articleId;
    const articleElement = this.selectedArticlesTarget.querySelector(`[data-article-id='${articleId}']`);
    articleElement.remove();
  }
}
