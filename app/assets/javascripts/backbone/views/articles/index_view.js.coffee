Blog.Views.Articles ||= {}

class Blog.Views.Articles.IndexView extends Backbone.View
  template: JST["backbone/templates/articles/index"]

  initialize: () ->
    @options.articles.bind('reset', @addAll)

  addAll: () =>
    @options.articles.each(@addOne)

  addOne: (article) =>
    view = new Blog.Views.Articles.ArticleView({model : article})
    @$("article").append(view.render().el)

  render: =>
    $(@el).html(@template(articles: @options.articles.toJSON() ))
    @addAll()

    return this
