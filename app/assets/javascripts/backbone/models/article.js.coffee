class Blog.Models.Article extends Backbone.Model
  paramRoot: 'article'

  defaults:
    title: null
    text: null


class Blog.Collections.ArticlesCollection extends Backbone.Collection
  model: Blog.Models.Article
  url: '/articles'
