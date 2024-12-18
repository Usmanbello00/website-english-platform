
document.addEventListener('DOMContentLoaded', () => {
    const wordOptions = document.querySelectorAll('.word');
    const sentenceForm = document.getElementById('sentence-form');
    let isSubmitted = false;

    wordOptions.forEach(wordElement => {
        wordElement.addEventListener('click', () => {
            if (isSubmitted) return;

            const word = wordElement.textContent.trim();
            const input = document.querySelector(`input[name="${wordElement.dataset.input}"]`);

            if (input) {
                let currentValue = input.value.trim();
                let wordsArray = currentValue.split(/\s+/);

                if (wordsArray.includes(word)) {
                    wordsArray = wordsArray.filter(w => w !== word);
                    input.value = wordsArray.join(' ').trim();
                    wordElement.classList.remove('selected');
                } else {
                    wordsArray.push(word);
                    input.value = wordsArray.join(' ').trim();
                    wordElement.classList.add('selected');
                }
            }
        });
    });

    document.querySelector('form').addEventListener('change', (event) => {
        if (event.target.name === 'num_sentences' || event.target.name === 'filter') {
            event.target.form.submit();
        }
    });

    sentenceForm.addEventListener('submit', (event) => {
        event.preventDefault();

        isSubmitted = true;

        const formData = new FormData(sentenceForm);
        const totalSentences = parseInt(formData.get('total_sentences'), 10);
        let correctCount = 0;

        for (let i = 0; i < totalSentences; i++) {
            const originalSentence = formData.get(`correct_sentences[${i}]`).trim();
            const userAnswer = formData.get(`sentences[${i}]`).trim();

            let box = document.querySelector(`.sentences-box:nth-of-type(${i + 1})`);
            box.classList.remove('unselected', 'error', 'incorrect');

            let text = document.querySelectorAll('input[type="text"]');
            let translate = document.querySelectorAll("#translate");
            if (originalSentence === userAnswer) {
                correctCount++;
                box.classList.add('correct');
            } else if (userAnswer) {
                translate[i].innerHTML += `<br><del>${userAnswer}<del>`
                text[i].value = originalSentence;
                box.classList.add('error');
            } else {
                text[i].value = originalSentence;
                box.classList.add('unselected');
            }
        }

        Swal.fire({
            title: `Test Results ${Math.round(correctCount / totalSentences * 100)}%`,
            text: `You got ${correctCount} out of ${totalSentences} correct!`,
            icon: "success",
            confirmButtonText: 'OK'
        });

        document.querySelectorAll('input[type="text"]').forEach(input => {
            input.setAttribute('readonly', 'readonly');
        });

        document.querySelectorAll('.word').forEach(word => {
            word.classList.add('disabled');
        });
    });

    document.getElementById('refresh-test').addEventListener('click', () => {
        window.location.reload();
    });
});
