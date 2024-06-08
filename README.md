# Pico Posts (Microblogging Rails Application)

Welcome to Pico Posts Rails Application! This application provides a platform for users to share short posts, follow other users, and engage with content in a social networking style.

## Features

1. **User Authentication**: Users can sign up, log in, and log out securely. Passwords are encrypted for security.
2. **Post Creation**: Users can create short posts to share with their followers.
3. **Follow System**: Users can follow/unfollow other users to see their posts on their feed.
4. **Feed**: Users have a personalized feed where they can see posts from users they follow.
5. **Like & Comment**: Users can like and comment on posts.

## Steps for installation

prerequisites: ruby "3.0.2" | rails "~> 7.1.2"

Follow these steps to set up the application:

1. Clone the repository: `git clone <repository-url>`
2. Navigate to the project directory: `cd microblogging-rails`
3. Install dependencies: `bundle install`
4. Set up the database: `rails db:create && rails db:migrate`
5. Start the Rails server: `rails server`

## Configuration

Ensure you have the following environment variables set:

- `DATABASE_URL`: URL to your database.
- `SECRET_KEY_BASE`: Secret key for encrypting sessions.

You can also configure other settings such as mailer configuration for password reset functionality, AWS S3 for storing images, etc., in the respective configuration files (`config/environments/development.rb`, `config/environments/production.rb`, etc.).

## Usage

Once the application is set up and running, users can access it through their web browser. They can sign up for an account, log in, create posts, follow other users, like and comment on posts, and explore their personalized feed.

## Contributing

We welcome contributions to enhance the features, fix bugs, or improve the code quality. Here's how you can contribute:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature-branch`
3. Make your changes and commit them: `git commit -am 'Add new feature'`
4. Push to the branch: `git push origin feature-branch`
5. Submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Credits

This application was created and maintained by Sumair Qaisar sumairqaisar992@gmail.com.

Happy Microblogging! 🚀
