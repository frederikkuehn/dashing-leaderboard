# Slack-Gamebot Leaderboard Dashing Widget

## Description
Widget for [Dashing](http://dashing.io/) that shows the leaderboard of the current season from a [slack-gamebot](https://github.com/dblock/slack-gamebot) instance.

## Installation
To use this widget, copy `slack_gamebot_leaderboard.html`, `slack_gamebot_leaderboard.coffee`, and `slack_gamebot_leaderboard.scss` into a `/widgets/slack_gamebot_leaderboard` directory, and copy the `slack_gamebot_leaderboard.rb` file into your `/jobs` folder.

This can also be done by using the gist: https://gist.github.com/frederikkuehn/1299bf3771dd8f6d14b455b09a4129ae

    dashing install 1299bf3771dd8f6d14b455b09a4129ae

### Job configuration
* `gamebot_url` The url to the gamebot instance
* `team_id` Your team id

### Dashboard configuration
To include the widget in a dashboard, add the following snippet to the dashboard layout file:
```html
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
  <div data-id="gamebot-leaderboard" data-view="SlackGamebotLeaderboard"></div>
</li>
```
