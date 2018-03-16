jQuery(function($){

    $.supersized({

        // Functionality
        slide_interval     : 4000,    // Length between transitions
        transition         : 1,    // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
        transition_speed   : 1000,    // Speed of transition
        performance        : 1,    // 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)

        // Size & Position
        min_width          : 0,    // Min width allowed (in pixels)
        min_height         : 0,    // Min height allowed (in pixels)
        vertical_center    : 1,    // Vertically center background
        horizontal_center  : 1,    // Horizontally center background
        fit_always         : 0,    // Image will never exceed browser width or height (Ignores min. dimensions)
        fit_portrait       : 1,    // Portrait images will not exceed browser height
        fit_landscape      : 0,    // Landscape images will not exceed browser width

        // Components
        slide_links        : 'blank',    // Individual links for each slide (Options: false, 'num', 'name', 'blank')
        slides             : [    // Slideshow Images
                                 {image : 'https://images.unsplash.com/photo-1470327500070-4857199b1bcd?ixlib=rb-0.3.5&s=6cef74d0a29054612d9726d90b4541e3&auto=format&fit=crop&w=1500&q=80.png'},
                                 {image : 'https://images.unsplash.com/photo-1437081327115-6c0ccc43d1ca?ixlib=rb-0.3.5&s=dd8dbbccaf5aa802aa60c8b2942996ba&auto=format&fit=crop&w=1052&q=80.png'},
                                 {image : 'https://images.unsplash.com/photo-1414090496606-35fb2249fb15?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=064529923c7914fe2b6ddfb8e129b873&auto=format&fit=crop&w=1050&q=80.png'}
                             ]

    });

});
