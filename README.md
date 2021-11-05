# README FOR REVIEWER
- Unit Tests can be found under 'spec' directory. There are 2 major components tested: controllers (tests are written in controllers and requests directory - the recommended way to test controllers is by requests method, but the pages controller is very simple, holding just a model for static web pages e.g. contact page) and models.
- Overall Test Coverage is around 81%, because the tool I used for that also counts some other helper methods and so on where only the class/method header are written (so basically I haven't use them at all). But for controllers and models, test coverage is close to 100%. I used simplecov gem for running the test coverage. Proof of this can be found under coverage/index.html (% can be viewed there)
- There are 51 tests, all passing successfully
![Test Coverage](https://i.imgur.com/F7KnyP5.jpeg)

# TODO
- populate the website with more data
