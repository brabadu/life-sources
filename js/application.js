load_gallery = function(image_theme){
    var opts = {
        q: image_theme,
        cx: '015379858983269969169:subkun_nnri',
        key: 'AIzaSyD7viD2gwUUn18g7edGP56AdSxVqosnnmU',
        filter: 1,
        imgSize: 'medium',
        searchType: 'image'
    },
    url = 'https://www.googleapis.com/customsearch/v1',
    cb = function(resp){
        var images;

        if (resp.items) {
            images = $('.gallery');
            $.each(resp.items, function(index, value){
              var image_height, image;

                image = $('<li>', {
                    'class': 'gallery__item'
                }).append($('<img>', {
                    src: value.image.thumbnailLink,
                    title: value.title
                })).appendTo(images);
            });
        }
        else {
            console.log('not ok', resp);
        }
    };

    $.get(url, opts, cb);
};