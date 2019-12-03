// $(function() {
//   $("#unlike_btn").on("click", function(e) {
//     $.ajax({
//       url: '/likes',
//       type: 'POST',
//       dataType: 'json',
//       data: {id: $(this).data('id')}
//     })
    
//     // 処理が上手く行ったらボタンを切り替えて
//     .done((data) => {
//       console.log("発火");
//       if ($(this).text() === 'いいね！') {
//         $(this).text('いいね！を取り消す').removeClass('btn-primary').addClass('btn-secondary');
//       } else if ($(this).text() === 'いいね！を取り消す') {
//         $(this).text('いいね！').removeClass('btn-secondary').addClass('btn-primary');
//       }
//     })
    
//     // 処理が上手く行かなかったら失敗の旨を伝えるアラートを表示
//     .fail((data) => {
//       alert('いいねに失敗しました');
//     })
//   });
// });