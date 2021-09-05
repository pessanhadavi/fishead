import { deselect } from '../events/deselect';

const initOptionChecker = () => {
  const choiceOptions = document.querySelectorAll('.choice-item');

  if (choiceOptions) {
    choiceOptions.forEach((option) => {
      option.addEventListener('click', () => {
        option.querySelector('input').checked = true;
        option.classList.add("option-selected");
        deselect();
      });
    });
  }
}

export { initOptionChecker };
