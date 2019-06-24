 // modal の初期化
  // 注意点１ イベントの着火をDOMContentLoaded => turbolinks:loadに変える
  document.addEventListener('turbolinks:load', function() {
  // 注意点2 countを0にセットする
    M.Modal._count = 0;
    var modal_elems = document.querySelectorAll('.modal');
    // optionsで公式docsを参考にカスタマイズ
    var modal_options = {
      opacity: 0.8,
      inDuration: 100	
    };
    M.Modal.init(modal_elems, modal_options);

    // carouselの初期化
    // デフォルト
    var carousel_elem1 = document.querySelector('#carousel1');
    var carousel_options1 = {};
    M.Carousel.init(carousel_elem1, carousel_options1);
    
    // fullWidth
    var carousel_elem2 = document.querySelector('#carousel2');
    var carousel_options2 = {
      fullWidth: true,
      indicators: true
    }
    M.Carousel.init(carousel_elem2,carousel_options2);
    
    // btn固定
    var carousel_elem3 = document.querySelector('#carousel3');
    var carousel_options3 = {
      fullWidth: true,
      indicators: true
    }
    M.Carousel.init(carousel_elem3,carousel_options3);
    
    // 2secスライド
    var carousel_elem4 = document.querySelector('#carousel4');
    var carousel_options4 = {
      fullWidth: true,
      indicators: true
    }
    var carousel_instance = M.Carousel.init(carousel_elem4,carousel_options4)
    if (carousel_instance != null){
      setInterval(function(){
        carousel_instance.next()
      },2000)
    }
    
    
    // collapsibleの初期化
    var collapsible_elems = document.querySelectorAll('.collapsible');
    // optionを設定。今回はなし。
    var collapsible_options ={}
    // 初期化する
    M.Collapsible.init(collapsible_elems, collapsible_options);
    
    var collapsible_elemEx = document.querySelector('.collapsible.expandable');
    var collapsible_optionsEx = {
      accordion: false
    }
    M.Collapsible.init(collapsible_elemEx, collapsible_optionsEx);
      
    // dropdownの初期化
      var dropdown_elem1 = document.querySelector('#dropdown-trigger1');
      var dropdown_options1 ={};
      M.Dropdown.init(dropdown_elem1,dropdown_options1);
      
      var dropdown_elem2 = document.querySelector('#dropdown-trigger2');
      var dropdown_options2 = {
        constrainWidth: false
      };
      M.Dropdown.init(dropdown_elem2,dropdown_options2);
      
      var dropdown_elem3 = document.querySelector('#dropdown-trigger3');
      var dropdown_options3 = {
        hover: true
      };
      M.Dropdown.init(dropdown_elem3,dropdown_options3);
            
      var dropdown_elem4 = document.querySelector('#dropdown-trigger4');
      var dropdown_options4 = {
        coverTrigger: false
      };
      M.Dropdown.init(dropdown_elem4,dropdown_options4);
      
      var dropdown_elem5 = document.querySelector('#dropdown-outter-trigger');
      var dropdown_options5 = {
        constrainWidth: false
      };
      M.Dropdown.init(dropdown_elem5,dropdown_options5);
      
      var dropdown_elem6 = document.querySelector('#dropdown-inner-trigger');
      var dropdown_options6 = {
        hover: true
      }
      M.Dropdown.init(dropdown_elem6,dropdown_options6);
      
      // materialboxedの初期化
      var media_elems = document.querySelectorAll('.materialboxed');
      // オプションで拡大/縮小アニメーションの時間を変更
      var media_options ={
        inDuration: 300,
        outDuraiton: 250
      }
      M.Materialbox.init(media_elems, media_options);
      
      // slider初期化
      var slider_elems = document.querySelectorAll('.slider');
      // intervalオプションで切り替え時間を3秒に変える
      var slider_options = {
        interval: 3000
      }
      
      M.Slider.init(slider_elems, slider_options);
  })