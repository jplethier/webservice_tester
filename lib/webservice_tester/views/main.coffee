$ ->
  $('#send .loading').hide()
  $('#send').ajaxStart ->
    $(this).find('.loading').show()
    $(this).find('.default').hide()
  $('#send').ajaxStop ->
    $(this).find('.loading').hide()
    $(this).find('.default').show()
  $("#send").click ->
    return false if $(this).find('.loading').is(":visible")
    url = $("#url").val()
    body = $("#body").val()
    headers = $("#headers").val()
    method = $("input[name='method']:checked").val()
    jsonBody = JSON.parse(body) if body
    jsonHeaders = JSON.parse(headers) if headers
    $.ajax url: url, headers: jsonHeaders, type: method, data: jsonBody, dataType: 'json', success: (data, status, req) ->
        $("#status-code").val req.status
        $("#response-body").val js_beautify  req.responseText
      , error: (xhr, ajaxOptions, thrownError) ->
        $("#status-code").val xhr.status
        $("#response-body").val js_beautify xhr.responseText

  $('tr').click ->
    $('#url').val $(this).data('tester').url
    $('#'+ $(this).data('tester').method).attr('checked', true);
    $('#body').val js_beautify $(this).data('tester').body
    $('#headers').val js_beautify $(this).data('tester').headers
