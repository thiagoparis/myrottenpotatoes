var MoviePopup = {

  setup: function() {
    // add hidden 'div' to end of page to display popup
    var popupDiv = $('<div id="movieInfo"></div>');
    popupDiv.hide().appendTo($('body'));
    $(document).on('click','#movies a',MoviePopup.getMovieInfo);
  },

  getMovieInfo: function() {
    $.ajax(
      {
        type: 'GET',
        url: $(this).attr('href'),
	timeout: 5000,
	success: MoviePopup.showMovieInfo,
	error: function(xhrObj,textStatus,exception) {alert('Error!');}
      }
    );
    return(false);
  },

  showMovieInfo: function(data,requestStatus,xhrObject) {
    // center a floater 1/2 as wide and 1/4 as tall as screen
    var oneFourth = Math.ceil($(window).width() / 4);
    $('#movieInfo').css({'left': oneFourth, 'width': 2*oneFourth, 'top': 250}).html(data).show();
    // make the Close link work
    $('#closeLink').click(MoviePopup.hideMovieInfo);
    return(false);
  },

  hideMovieInfo: function() {
    $('#movieInfo').hide();
    return(false);
  }

};

var MoviePopupJson = {

  setup: function() {
    // add hidden 'div' to end of page to display popup
    var popupDiv = $('<div id="movieInfo"></div>');
    popupDiv.hide().appendTo($('body'));
    $(document).on('click','#movies a',MoviePopupJson.getMovieInfo);
  },

  getMovieInfo: function() {
    $.ajax(
      {
        type: 'GET',
	dataType: 'json',
        url: $(this).attr('href'),
	timeout: 5000,
	success: MoviePopupJson.showMovieInfo,
	error: function(xhrObj,textStatus,exception) {alert('Error!');}
      }
    );
    return(false);
  },

  showMovieInfo: function(jsonData,requestStatus,xhrObject) {
    // center a floater 1/2 as wide and 1/4 as tall as screen
    var oneFourth = Math.ceil($(window).width() / 4);
    $('#movieInfo').css({'left': oneFourth, 'width': 2*oneFourth, 'top': 250}).html($('<p>' + jsonData.title + '</p><p><a id="closeLink" href="#">Close</a></p>')).show();
    // make the Close link work
    $('#closeLink').click(MoviePopupJson.hideMovieInfo);
    return(false);
  },

  hideMovieInfo: function() {
    $('#movieInfo').hide();
    return(false);
  }

};

// Changed to accomodate Turbolinks
//$(MoviePopup.setup);
$(document).on('page:change', MoviePopup.setup);
//$(document).on('page:change', MoviePopupJson.setup);

