
  $(function() {
    $(document.body).on('click', 'button.buy', function() {
      var $button = $(this),
      productId = $button.data('product'),
      productName = $button.data('name'),
      productPrice = $button.data('price');
      
      console.log(productId, productName, productPrice);
    })
  })
