# parley app

a social media platform dedicated to intellectually discussing ideas based on logic and reason rather than emotional bias.

user content is automatically moderated by a sentiment analysis engine that must approve content before it is accepted.

the goal is to give those a place to propose, debate, and challenge ideas in a reasonable manner for the sake of finding the truth in contrast
plague of modern society that villainizes any opposing views.


stack:

    Flutter for UI

    Supabase for database

    Heroku for hosting SA API



alternative stack:


    postgres db on AWS

    hasura graphQL api

    apollo to manage graphQL from front end

    microservices for business logic



TODOS:

- after creating an account, it requires email verification
    - find a work around (clicking link in phone should return to app)
    - create a website that the link will redirect to and validate the verification
- creating new account should prompt user to check email and verify it via the link then navigate to sign in
    - read docs on email verification
    - create landing page for account confirmation -> redirect to complete profile
- enable google sign in

reference

https://github.com/FatumaA/supa_auth_flutter