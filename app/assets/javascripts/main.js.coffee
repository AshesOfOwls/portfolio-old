$ ->
  color = jQuery.Color('#999')

  pageWidth = $(document).width()
  pageHeight = $(document).height()

  $(window).on "resize", ->
    pageWidth = $(document).width()
    pageHeight = $(document).height()

  hue_offset = Math.random() * 200
  $("body").on "mousemove", (e) ->
    x = e.pageX || pageWidth / 2
    y = e.pageY || pageHeight / 6
    percent_x = x / pageWidth
    percent_y = y / pageHeight
    grid_x = .5 - percent_x

    saturation = 1.2 - Math.abs(grid_x * 2)
    hue = percent_y * 80 + hue_offset

    $("body").css
      backgroundColor: color.hue(hue).saturation(saturation)

  $("body").trigger "mousemove", { pageX: 20, pageY: 20 }