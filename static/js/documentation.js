// Init sidebar
$(function() {
  // Generate table when HTML element exists
  if (document.getElementById('millennium-diff-table') != null) {
    displayOverviewTable();
  }

  // Set class 'active' for the appropriate subnav link
  var pageUrl = location.href.match(/(.+\/millennium\/[^\/]+\/)/)[0]
  $('.sub-nav li a').each(function() {
    $(this).toggleClass('active', this.href === pageUrl);
  });

  var activeItem,
      helpList = $('#js-sidebar .js-topic'),
      firstOccurance = true,
      styleTOC = function() {
        $('#js-sidebar .js-topic a').each(function(){
          if ($(this).parent('li').hasClass('disable'))
            $(this).parent('li').removeClass('disable')

          var url = $(this).attr('href').toString()
          var currentDocUrl = './'
          if(url.indexOf(currentDocUrl) >= 0 && url.length == currentDocUrl.length){
            $(this).parent('li').addClass('disable')
            var parentTopic = $(this).parentsUntil('div.sidebar-module > ul').last()
            parentTopic.addClass('js-current')
            parentTopic.find('.js-expand-btn').toggleClass('collapsed expanded')
          }
        });
      }

  // bind every href with a hash; take a look at v3/search/ for example
  $('#js-sidebar .js-accordion-list .js-topic a[href*=#]').bind("click", function(e) {
    if (window.location.toString().indexOf($(e.target).attr('href')) == -1)
      setTimeout(styleTOC, 0); // trigger the window.location change, then stylize
  });

  // hide list items at startup
  if($('body.api') && window.location){
    styleTOC();
  }

  $('#js-sidebar .js-topic').each(function(){
    if(($(this).find('.disable').length == 0 || firstOccurance == false) &&
    $(this).hasClass('js-current') != true){
      $(this).find('.js-guides').children().hide()
    } else {
      activeItem = $(this).index()
      firstOccurance = false
    }
  })

  // Toggle style list. Expanded items stay
  // expanded when new items are clicked.
  $('#js-sidebar .js-toggle-list .js-expand-btn').click(function(){
    var clickedTopic = $(this).parents('.js-topic'),
        topicGuides  = clickedTopic.find('.js-guides li')
    $(this).toggleClass('collapsed expanded')
    topicGuides.slideToggle(100)
    return false
  })

  // Accordion style list. Expanded items
  // collapse when new items are clicked.
  $('#js-sidebar .js-accordion-list .js-topic h3 a').click(function(){
    var clickedTopic = $(this).parents('.js-topic'),
        topicGuides = clickedTopic.find('.js-guides li')

    if(activeItem != clickedTopic.index()){
      if(helpList.eq(activeItem)){
        helpList.eq(activeItem).find('.js-guides li').slideToggle(100)
      }
      activeItem = clickedTopic.index()
      topicGuides.slideToggle(100)
    } else {
      activeItem = undefined
      topicGuides.slideToggle(100)
    }

    return false
  })

  // Dynamic year for footer copyright
  var currentYear = (new Date).getFullYear();
  $.each($(".js-year"), (function() { $(this).text( currentYear ) }));

  // Earth animation
  if ($('.dev-program').length) {
    setTimeout(function() {
      $('.earth').fadeOut();
      $('.earth-short-loop').show();
    }, 19 * 1000); // Let first loop run through 19 seconds
  }
});

/**
 * Sends a GET request to the specified URL with the given parameters.
 * @param {string} url - The URL to request from.
 * @param {object} headers - The headers to use in the GET request.
 * @param {bool} [cache = false] - Whether or not to cache the returned results.
 * @param {function(response)} callback - The function called when the AJAX request has completed successfully.
 * @param {function} onFail  - The function called when the AJAX request fails.
 */
function fetchData(url, headers, cache = false, callback, onFail) {
  $.ajax({
      type: 'GET',
      url: url,
      headers: headers,
      cache: cache,
    })
    .done(function(response) {
      callback(response);
    })
    .fail(function(e) {
      onFail(e);
    });
}
