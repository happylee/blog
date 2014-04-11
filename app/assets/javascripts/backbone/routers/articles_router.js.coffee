class Blog.Routers.ArticlesRouter extends Backbone.Router
  initialize: (options) ->
    @articles = new Blog.Collections.ArticlesCollection()
    @articles.reset options.articles

  routes:
    "new"      : "newArticle"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newArticle: ->
    @view = new Blog.Views.Articles.NewView(collection: @articles)
    $("#main").html(@view.render().el)

  index: ->
    @view = new Blog.Views.Articles.IndexView(articles: @articles)
    $("#main").html(@view.render().el)

  show: (id) ->
    article = @articles.get(id)

    @view = new Blog.Views.Articles.ShowView(model: article)
    $("#main").html(@view.render().el)

  edit: (id) ->
    article = @articles.get(id)

    @view = new Blog.Views.Articles.EditView(model: article)
    $("#main").html(@view.render().el)
