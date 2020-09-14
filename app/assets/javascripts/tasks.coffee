# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

task =
  init: ->
    self = this
    self.form_submit()
    self.task_edit()
    self.task_delete()
    self.clickable_card()

  form_submit: ->
    $("#create_task").on 'click', () ->
      $("#save-task").trigger "click"
  
  task_edit: ->
    $("#editTask").on 'click', '#update_task', () ->
      $("#update-task").trigger "click"

  task_delete: ->
    $.ajaxSetup({
      headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    })

    $("#editTask").on 'click', '#delete_task', () ->
      $.ajax({
        type: "Delete"
        url: $(this).data("url")
      })

  clickable_card: ->
    $('.task').on 'click', () ->
      $.ajax({
        url: $(this).data("url"),
      })

$(document).on "turbolinks:load", ->
  if $('.task-container').length > 0
    task.init()
