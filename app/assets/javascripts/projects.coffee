# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

project =
  init: ->
    self = this
    self.create_project()
    self.edit_project()
    self.edit_project_view()

  create_project: ->
    $("#create_project").on 'click', () ->
      $("#save-project").trigger 'click'
  
  edit_project_view: ->
    $('.edit-project').on 'click', () ->
      $.ajax({
        url: $(this).data("url"),
      })

  edit_project: ->
    $("#editProject").on "click", "#update_project", ->
      $("#update-project").trigger "click"
      
  

$(document).on "turbolinks:load", ->
  project.init()
