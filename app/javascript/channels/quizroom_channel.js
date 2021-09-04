import consumer from "./consumer";

const initQuizroomCable = () => {
  const answersContainer = document.getElementById('answers');
  if (answersContainer) {
    const id = answersContainer.dataset.quizroomId;

    consumer.subscriptions.create({ channel: "QuizroomChannel", id: id }, {
      received(data) {
        answersContainer.insertAdjacentHTML('afterbegin', data);
      },
    });
  }
}

export { initQuizroomCable };
