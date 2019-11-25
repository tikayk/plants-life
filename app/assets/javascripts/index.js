$(function() {
  $('.slider').slick({
    slidesToShow: 4,
    slidesToScroll: 4,

    // スライドの高さが違うときに自動調整するか [初期値:false]
    adaptiveHeight: true,
    // 自動再生するか [初期値:false]
    autoplay: false,
    // ドットナビゲーションを表示するか [初期値:false
    dots: false,
    // スライド切り替えをフェードするか [初期値:false]
    fade: false,
    // 開始スライド（0から始まるので注意） [初期値:0]
    initialSlide: 1,
  });
  
  var filtered = false;
  
  $('.js-filter').on('click', function(){
    if (filtered === false) {
      $('.filtering').slick('slickFilter',':even');
      $(this).text('Unfilter Slides');
      filtered = true;
    } else {
      $('.filtering').slick('slickUnfilter');
      $(this).text('Filter Slides');
      filtered = false;
    }
  });
});



