//네이게이션
function Navi() {
    var _this = this;
    
    // ENV
    _this.env = {};
    
    // 상품 상세 페이지 이동 함수
    _this.detailsPage = function(product_no) {
//    	location.href = "/main/details.do?product_no="+product_no;
    };
    
    // Init
    _this.init = function() {
//        _this.eventBind();
    }();
}

var navi = new Navi();

