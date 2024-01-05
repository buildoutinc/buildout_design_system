# BuildoutDesignSystem
The Buildout Design System is a rails engine that will help incorporate Buildouts design system stylesheets and view components into any rails project.

## Usage in an application
**Requirements**
Your application must be using `Bootstrap 5` and `sass`.

Install the gem and add to the application's Gemfile by executing:
```
bundle add buildout_design_system
```

**Incorporate the CSS**
In your applications stylesheet
```
@import "buildout_design_system/setup";
// IMPORT BOOTSTRAP
@import "buildout_design_system/components";
// IMPORT THE REST OF YOUR STYLES
```

## Usage for development
This repository include a dummy rails application for ease of development. Simply pull this repo down and run rails as normal

```
bundle install
rails s
```
and navigate to `localhost:3000/lookbook`
