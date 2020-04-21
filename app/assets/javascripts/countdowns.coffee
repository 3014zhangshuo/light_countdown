$ ->
  $(document).on 'ajax:success', '#new_countdown', ->
    $('#countdown-create').modal('hide')
