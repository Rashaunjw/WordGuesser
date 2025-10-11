Wordguesser: a scaffolded (!) ESaaS getting-started assignment
=============================================================

In this assignment you'll be introduced to part of the basic cycle of creating SaaS in a disciplined way.

Learning Goals
--------------
After completing this assignment, you will be able to:

* Create and deploy simple SaaS apps in your development environment, and deploy them to the public cloud
* Practice the basic workflow of test-driven development (TDD), in which tests are written before the code (so they fail when first run) and code is then added to make them pass
* Understand how SaaS frameworks such as Sinatra support the conceptual components of a three-tier SaaS application architecture
* Understand the challenges of adapting a non-SaaS application to a SaaS environment, including how to identify and manage application state
* Understand one use case of service-oriented architecture, in which your SaaS app relies on an external service's API (application programming interface) to provide part of the SaaS app's functionality.

Introduction
------------
The full Agile/XP cycle we follow in ESaaS includes talking to the customer, using BDD to develop scenarios, turning those scenarios into runnable integration/acceptance tests with Cucumber, using those scenarios plus TDD to drive the creation of actual code, and deploying the result of each iteration's work to the cloud.

In this introductory assignment, we've provided RSpec unit tests to let you use TDD to develop game logic for a word-guessing game.  In the full Agile/XP cycle, you'd develop these tests yourself as you code.

You'll then use the Sinatra framework to make the Wordguesser game available as SaaS. Adapting the game logic for SaaS will introduce you to thinking about RESTful routes and service-oriented architecture. As you develop the "SaaS-ified" Wordguessing game, you'll use Cucumber to describe how gameplay will work from the player's point of view and as "full stack" integration tests that will drive SaaS development.  In the full Agile/XP cycle, you'd develop Cucumber scenarios yourself based on consultation with the customer, and create the necessary *step definitions* (Cucumber code that turns plain-English scenarios into runnable tests).  In this assignment we provide both the scenarios and step definitions for you.

You'll deploy your game to the cloud using Heroku, giving you experience in automating SaaS deployment.

**Why Sinatra?** 

This assignment uses the simple [Sinatra](https://github.com/sinatra/sinatra) framework rather than Rails, so that you can focus on tools, mechanics, and SaaS concepts, all of which will readily map to Rails later.  Since our app doesn't have a database and has very few functions, Sinatra is an easy way to get started.


