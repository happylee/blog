Blog.Views.Articles ||= {}

class Blog.Views.Articles.ShowView extends Backbone.View
  template: JST["backbone/templates/articles/show"]

  events:
    "click .destroy" : "destroy"

  destroy: () ->
    @model.destroy()
    this.remove(
     window.location.hash = "/#index"
    )

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
