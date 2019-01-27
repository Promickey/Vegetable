var cart= [];
var checkout = $('.checkout-value').val();
if(checkout == 1) localStorage.cart = [];
$('.checkout-value').val('');

if (!localStorage.cart) {
    localStorage.cart = cart;
} else {
    cart = JSON.parse(localStorage.cart);   //lấy ra mảng các đối tượng item từ localstorage
}

$(function(){

    updateMinicart(cart);

    $(document).on('click', '.add-to-cart', function (event) {
        event.preventDefault();
        //get data from this cart
        var id = $(this).data('id');
        var name = $(this).data('name');
        var quantity = $(this).data('quantity');
        var price = $(this).data('price');
        var image = $(this).data('image');

        var item = {
            id: parseInt(id),
            name: name,
            quantity: parseInt(quantity),
            price: parseInt(price),
            image: image
        };

        //cart rỗng, thêm phần tử đầu tiên
        if (isEmptyCart()) {
            addToCart(item);
        } else {
            //thêm vào item đã tồn tại
            
            if (isItemExists(id)) {
                increaseQuantity(id, quantity);
            }
            //thêm item mới
            else {
                addToCart(item);
            }
        }

        updateLocalStorageCart();

        updateMinicart();

        $('.view-cart').addClass('show-cart');

    });


    $(document).on('click', '.cart-detail-remove', function(event) {
    	event.preventDefault();
    	var id = $(this).data('id');
    	removeCartItem(id);
    	updateLocalStorageCart();
        updateMinicart();
        updateMainCart();
    });



    function updateMinicart() {
        var viewcart = $('.view-cart'); 
        var totalItems = cart.length;
        var subtotal = stotal().toLocaleString();
        

        //update subtotal
        

        if (totalItems == 0) 
        {
            viewcart.find('.cart-item').append('<strong class="text-capitalize">Bạn chưa chọn sản phẩm cho giỏ hàng của mình</strong>');
            viewcart.find('.cart-detail-name').hide();
            viewcart.find('.cart-detail-quantity').hide();
            viewcart.find('.cart-detail-remove').hide();
            viewcart.find('.cart-detail-price').hide();
            
            viewcart.find('.cart-subtotal').hide();
            viewcart.find('.cart-checkout').hide();
        } 
        else 
        {
            //update miniproduct
            items = '';
            cart.forEach(item => {
                items+=	'<li class="cart-item">'+
							'<span class="cart-detail-name">' + item['name'] + '</span>' +
							'<span class="cart-detail-quantity">' + item['quantity'] + '</span>' +
							'<span data-id="' + item['id'] + '" class="btn btn-danger cart-detail-remove"><i class="fa fa-remove"></i></span>' + 
							'<span class="cart-detail-price">'+ (item['price'] * item['quantity']).toLocaleString()  +'  vnđ</span>' +
						'</li>';
            });

            viewcart.find('.subtotal').html(subtotal + ' VNĐ');
            viewcart.find('.cart-checkout').show();
            viewcart.find('.minicart').html(items);
            viewcart.find('.cart-subtotal').show();
            
        }
       

    }

    function isEmptyCart(){
    if (cart.length == 0) {
        return true;
    }
    return false;
    }

    function addToCart(item) {
        cart.push(item);
    }

    function updateLocalStorageCart() {
        localStorage.cart = JSON.stringify(cart);
    }

    function isItemExists(id) {
        for(i = 0; i < cart.length; i++) {
            if (cart[i]['id'] == id) {
                return true;
            }
        }
        return false;
    }

    function increaseQuantity(id, quantity) {
        for(i = 0; i < cart.length; i++) {
            if (cart[i].id == id) {
                cart[i].quantity += parseInt(quantity);
            }
        }
    }

    function updateQuantity(id, quantity) {
        for(i = 0; i < cart.length; i++) {
            if (cart[i].id == id) {
                cart[i].quantity = parseInt(quantity);
            }
        }
    }

    function stotal() {
        var subtotal = 0;

        cart.forEach(item => {
            subtotal += item['price'] * item['quantity'];
        });
        return subtotal;
    }

    function removeCartItem(id) {
        for(i = 0; i < cart.length; i++) {
            if (cart[i]['id'] == id) {
                cart.splice(i, 1);
            }
        }
    }

    $(document).on('click', 'input.button', function(event) {
    	event.preventDefault();
    	$('.view-cart').toggleClass('show-cart');
    });

    // $(document).on('click', 'a.add-to-cart', function(event) {
    // 	event.preventDefault();
    // 	$('.view-cart').addClass('show-cart');
    // });

    //thay đổi số lượng khi check out

    $(document).on('change', '.change-qty', function(event) {
        event.preventDefault();
        var quantity= $(this).val();
        var id =  $(this).parent().parent().find('.product_id').text();
        updateQuantity(id, quantity);
        updateLocalStorageCart();
        updateMinicart();
        updateMainCart();
        /* Act on the event */
    });



    function updateMainCart(){
        var maincheckout = $('.main-checkout');
        var checkout_info = $('.checkout-info');
        var total = stotal();
        var totalItems = cart.length;

        if (totalItems == 0) {
            maincheckout.html('<h2>Bạn chưa có sản phẩm nào trong giỏ hàng</h2>');
            checkout_info.html("");
        }
        else{
            items = '';
            items = '<caption align="top">GIỎ HÀNG CỦA BẠN</caption>'+
                        '<thead>'+
                            '<tr>'+
                                '<th>#</th>'+
                                '<th>Tên</th>'+
                                '<th>Image</th>'+
                                '<th>Price</th>' +
                                '<th>Qty</th>'+
                                '<th>SubTotal</th>' +
                                '<th hidden>product_id</th>' +
                            '</tr>'+
                        '</thead>'+ 
                        '<tbody>';

            for (var i = 0; i < cart.length; i++) {
                items+=
                            '<tr>'+
                                '<td>'+(i+1)+'</td>'+
                                '<td>'+cart[i].name+'</td>'+
                                '<td>'+'<img class="checkout-img" src="'+cart[i].image+'")'+'></td>'+
                                '<td>'+cart[i].price.toLocaleString()+' vnđ</td>'+
                                '<td><input type="number" class="change-qty" value="'+cart[i].quantity+'"></td>'+
                                '<td>'+(cart[i].price * cart[i].quantity).toLocaleString()+' vnđ</td>'+
                                '<td hidden class="product_id">'+cart[i].id+'</td>'+
                            '</tr>';
            }
            //<input type="number" class="change-qty" value="cart[i].quantity">

            /*cart.forEach(item => {
                items+=
                            '<tr>'+
                                '<td></td>'+
                                '<td>'+item['name']+'</td>'+
                                '<td>'+'<img class="checkout-img" src="'+item['image']+'")'+'></td>'+
                                '<td>'+item['price'].toLocaleString()+'</td>'+
                                '<td>'+item['quantity']+'</td>'+
                                '<td>'+(item['price'] * item['quantity']).toLocaleString()+' VNĐ</td>'+
                            '</tr>';
                        
            });*/

            items +=    '</tbody>'+
                        '<tfooter>'+
                            '<tr class="font-weight-bold">' +
                                '<td colspan="5" class="text-right">Total:</td>'+
                                '<td>' + total.toLocaleString() + ' vnđ</td>'+
                            '</tr>'+
                        '</tfooter>';
            maincheckout.html(items);

            //send to checkout để click đặt hàng
            $('.carts').val(JSON.stringify(cart));
        }

    }

    $(function() {
        updateMainCart();
    });

});

