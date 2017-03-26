//네이게이션
function Search() {
    var _this = this;
    
    // ENV
    _this.env = {};
    
    // 상품 상세 페이지 이동 함수
    _this.search = function() {
    	var search = $('#searchValue').val();
    	location.href="/main/shop/list/search.do?search="+search;
    };
    
    // Init
    _this.init = function() {
//        _this.eventBind();
    }();
}

var search = new Search();

