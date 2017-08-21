var map;
var marker = [];
var infoWindow = [];
var shibuya_lat = 35.6580339;
var shibuya_lng = 139.6994418;
var markerData = []
var concert_data = gon.concerts
concert_data.forEach(function(val,index,ar){
  var data = [];
  data.unshift(val['concert']);
  data.unshift(val['user']);
  markerData.unshift(data);
});

console.log(markerData);
function initMap() {
 // 地図の作成
    var mapLatLng = new google.maps.LatLng({lat: shibuya_lat, lng: shibuya_lng}); // 緯度経度のデータ作成
   map = new google.maps.Map(document.getElementById('sample'), { // #sampleに地図を埋め込む
     center: mapLatLng, // 地図の中心を指定
      zoom: 15 // 地図のズームを指定
   });

 // マーカー毎の処理
 for (var i = 0; i < markerData.length; i++) {
    var concert = markerData[i][1];
    var user = markerData[i][0]
        markerLatLng = new google.maps.LatLng({lat: concert['latitude'], lng: concert['longitude']}); // 緯度経度のデータ作成
        marker[i] = new google.maps.Marker({ // マーカーの追加
         position: markerLatLng, // マーカーを立てる位置を指定
            map: map // マーカーを立てる地図を指定
       });
    infoWindow[i] = new google.maps.InfoWindow({ // 吹き出しの追加
      content: '<div class="sample"><p class="d-address">' + concert['address'] + '</p><a href="/concerts/' + concert['id'] + '"><div class="d-InfoWindow-User"><div class="d-InfoWindow-User-Inner"><img class="d-InfoWindow-Img" src="' + user['image_url'] + '"><div class="d-InfoWindow-contents"><p class="d-InfoWindow-Name">' + user['nickname'] + '<p class ="d-InfoWindow-category">Musician</p></p></div></div></div></a></div>' // 吹き出しに表示する内容
    });

     markerEvent(i); // マーカーにクリックイベントを追加
     marker[i].setOptions({// TAM 東京のマーカーのオプション設定
          icon: {
           url: 'http://www2.rikkyo.ac.jp/web/14bn016z/trunk_shibuya_live/pin.png'// マーカーの画像を変更
         }
     });

 }

}

// マーカーにクリックイベントを追加
function markerEvent(i) {
    marker[i].addListener('click', function() { // マーカーをクリックしたとき
      infoWindow[i].open(map, marker[i]); // 吹き出しの表示
  });
}
