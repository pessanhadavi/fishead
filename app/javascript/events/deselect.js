const deselect = () => {
  const inputs = document.querySelectorAll('.choice-item input');
  inputs.forEach((input) => {
    if (!input.checked) {
      const optionDiv = input.parentElement.parentElement

      optionDiv.classList.remove("option-selected");
    }
  });
};

export { deselect };
