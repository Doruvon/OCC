(function($){
    $.fn.frameAnimation = function(options){
        var setElm = this,
        defaults = {
            setWidth: 160, // フレーム幅
            frameSpeed: 70, // フレームスピード
            maxFrame: 17, // 最大コマ数
            loop:true // ループ再生
        };
        var setting = $.extend(defaults,options);
 
        var frameTime = 0,
        setTimer = function(){
            var left = -(frameTime) * setting.setWidth;
            setElm.css({backgroundPosition: left + 'px' + ' 0'});
            frameTime++;
            if(frameTime >= setting.maxFrame){
                if(setting.loop){
                    frameTime = 0;
                    setTimeout(setTimer, setting.frameSpeed);
                }
            } else {
                setTimeout(setTimer, setting.frameSpeed);
            }
        }
        setTimer();
    }
})(jQuery);