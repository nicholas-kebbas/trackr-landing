window.Shipping =
  init: ->
    $('body').on('click', '.device-select', (e) ->
      $("input[type='radio']:checked").removeAttr('checked')
      $("input[type='radio']:checked").prop('checked', false)
      $(this).children("input[type='radio']").attr('checked', 'checked')
      $(this).children("input[type='radio']").prop('checked', true)

      _kmq.push(['record', 'User Device Select', {device: $(this).children('input').val()}]);
    )

    $('body').on('click', '#user_previous_purchases', (e) ->
      if $('#user_purchased_device').attr('disabled')
        $('#user_purchased_device').prop('disabled', false);
      else
        $('#user_purchased_device').prop('disabled', true);
    )

Shipping.init() if $('#shipping-modal').size() > 0
