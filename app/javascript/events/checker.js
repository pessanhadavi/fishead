const initOptionChecker = () => {
  const choiceOptions = document.querySelectorAll('.choice-item');

  if (choiceOptions) {
    choiceOptions.forEach((option) => {
      option.addEventListener('click', () => {
        option.querySelector('input').checked = true;
      });
    });
  }
}

export { initOptionChecker };
