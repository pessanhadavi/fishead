// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("channels")

// External imports
import "bootstrap";
import { initQuizroomCable } from '../channels/quizroom_channel';

// Internal imports, e.g:
import { initOptionChecker } from '../events/checker';

document.addEventListener('turbolinks:load', () => {
  initQuizroomCable();
  initOptionChecker();
});
