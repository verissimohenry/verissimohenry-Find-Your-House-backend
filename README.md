# Find-Your-House-backend

This is backend API built for [Find-Your-House](https://github.com/verissimohenry/verissimohenry-Find-Your-House-frontendd/tree/frontend).

This project is based on Ruby on Rails for the RESTFUL API which provide the house information and also authenticate user for the favourite house. It's a real-world-like project, built with business specifications.
      

## 📝 Contents

<p align="center">
<a href="#with">Built with</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ll">Live Demo Link</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#gs">Getting started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#author">Author</a>
</p>

## 🔧 Built with<a name = "with"></a>

- Ruby on Rails
- Ruby
- Postgresql
- Rack Cors
- RESTFUL API

## Live Demo Link <a name = "ll"></a>

[Live Demo](https://sheltered-sea-10755.herokuapp.com/)


## Getting Started <a name = "gs"></a>

To get a local copy of the repository please run the following commands on your terminal:

```
$ cd <folder>
```

~~~bash
$ git clone https://github.com/verissimohenry/verissimohenry-Find-Your-House-backend.git
$ cd find-your-house
$ bundle install
$ yarn install --check-files
~~~

Setup database with:

> make sure you have postgres sql installed and running on your local machine

> Go to config > database.yml

Replace ```xxx``` with your ```own``` postgres sql username and password instead of mine
```
username: xxx
password: xxx
```

> create and migrate the database by these commands

```
   rails db:create
   rails db:migrate
   rails db:seed
```

### How to run

Start server with:

```
    rails s -p 3001
```

Open `http://localhost:3000/` in your browser.


## To run Test

~~~ruby
$ rails db:migrate RAILS_ENV=test
$ rspec --format documentation

~~~
## AUTHOR

👤 **Verissimo Henry**

- Github: [@githubhandle](https://github.com/verissimohenry)
- Twitter: [@twitterhandle](https://twitter.com/verissimohenry)
- Linkedin: [linkedin](https://www.linkedin.com/in/henry-verissimo-618906167/)
- Email: verissimohenry04@gmail.com

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
