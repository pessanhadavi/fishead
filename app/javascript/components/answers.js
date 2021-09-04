const initAnswerAnalyzer = () => {
  const answerItem = document.querySelector('.answer-item');

  if (answerItem) {
    const answers = document.querySelectorAll('.answer-correction');
    
    answers.forEach((answer, i) => {
      const isCorrect = answer.firstElementChild.textContent;
      console.log(isCorrect == "Correta");
      if ( isCorrect == "Correta" ) {
        document.querySelector('.answer-item').className += " answer-green";
      } else {
        document.querySelector('.answer-item').className += " answer-red";
      }
    });
  }
}

export { initAnswerAnalyzer };
