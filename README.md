README.md

DBC Overflow
This project is a website that features questions and answers on a wide range of topics.  The website werves as a means for users to ask questions and answer questions that have been posted.

USER STORIES
- A user can create a question.

- A user can edit their question.
- A user cannot edit a question that they did not create.

- A user can answer a question.

- A user can vote on a question (upvote and downvote).
- A user can vote on an answer (upvote and downvote).

- A user can mark an answer to their question as "accepted"
- A user cannot mark 'accepted' to answers of a question that did not belong to them.

- A user can add tags to their question.
- A user can click on a tag and see all questions related to that tag.

- A user has reputation points (upvotes and downvotes).
- A user gains a reputation point upon an upvote to that user's question or answer.
- A user gains a reputation point upon a downvote to that user's question or answer.

MODELS
- Question
  - Contains a Title and Content

- Answer
  - Contains Content

VIEWS
- Question index page lists all questions.
- Question show page lists the question and all associated answers.
