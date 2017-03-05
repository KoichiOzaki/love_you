$(function () {

var $zoomIn = $('.zoomIn-0')
$zoomIn.each(function(index, element){
  $(element).textillate({
    //繰り返し
    loop: false,
    // アニメーションの間隔時間
    minDisplayTime: 9000000,
    // アニメーション開始までの遅延時間
    initialDelay: ($(element).data('slide-no')*5000 + $(element).data('message-no')*2000),
    // アニメーションの自動スタート
    autoStart: true,

    // 開始時のアニメーション設定
    in: {
      // エフェクトの指定
      effect: 'zoomIn',
      // 遅延時間の指数
      delayScale: 1.5,
      // 文字ごとの遅延時間
      delay: 200,
      // true:アニメーションをすべての文字に同時適用
      sync: false,
      // true:文字表示がランダムな順に表示される
      shuffle: false,
    },

    // 終了時のアニメーション設定
    out: {
      effect: 'hinge',
      delayScale: 1.5,
      delay: 50,
      sync: false,
      shuffle: false
    }
  });
});
})

