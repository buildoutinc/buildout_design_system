# BuildoutDesignSystem
The Buildout Design System is a rails engine that will help incorporate Buildouts design system stylesheets and view components into any rails project.

## Usage in an application

### Requirements

Your application must be using `Bootstrap 5` and `sass`.

### Installation

Install the gem and add to the application's Gemfile by executing:

```shell
bundle add buildout_design_system
```

### Configuration
Set up for the design is all done within the `application.scss` file. 

#### Incorporate the CSS

Adding the design system to your application is fairly simple. You will need to add the following to your `application.scss` file.
```scss

// Import Blueprint's Library Setup
@import "buildout_design_system/setup";
//Load Bootstrap
@import "bootstrap";

// Load Blueprint's Library
@import "buildout_design_system/components";

// Load any other custom SCSS files here
```

A couple of things to note, this could help you lean out your application file. If you are not using some of the components from bootstrap, you can comment them out from the list above and they won't get generated inside of the final CSS file.

## Help with Development
If you would like to contribute to the design system, you can clone the repository and run the following commands to get the design system up and running on your local machine.

```shell
bundle install
rails s
```
and navigate to `localhost:3000/lookbook`
