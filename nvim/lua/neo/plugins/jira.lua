local env = require("neo.config.env")
return {
  "letieu/jira.nvim",
  opts = {
    jira = {
      base = "https://niveshbirangal.atlassian.net",
      email = "niveshbirangal@gmail.com",
      token = env.jira_token,
      type = "basic",
      limit = "200",
    },
  },
}
